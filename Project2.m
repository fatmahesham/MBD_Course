%% Battery Management System (BMS) Diagnostics Main Script
clear; clc;

%% Project Requirement 1: Initialize BMS Parameters and Validate Input
% Prompt for number of modules with validation
N = input('Enter number of battery modules (must be > 2): ');
while N <= 2
    N = input('Invalid! Try again: ');
end

% Create N x N square matrix of zeros
Volt_Matrix = zeros(N);

% Replace the main diagonal with the nominal voltage (3.7V)
% Using eye(N)*3.7 or direct indexing via diag. 
% For a zero matrix, adding 3.7 * identity matrix isolates the diagonal.
Volt_Matrix = Volt_Matrix + eye(N) * 3.7;

% Prompt for battery chemistry
chem_type = input('Enter battery chemistry: ', 's');

% Display confirmation
fprintf('BMS Initialized for %s chemistry.\n', chem_type);


%% Project Requirement 2: Isolate Critical Battery Cells (Region of Interest)
% Extract the 2x2 submatrix at the bottom-right corner dynamically
Critical_Cells = Volt_Matrix(end-1:end, end-1:end);


%% Project Requirement 3: Voltage Normalization and Power Estimation
% Element-by-element exponentiation followed by element-by-element division
Norm_Power = (Critical_Cells .^ 2) ./ 4.2;


%% Project Requirement 4: Generate Diagnostic Status Flags
status_flag = [0, 1];

% Replicate the row vector 2 times vertically and 1 time horizontally
Flag_Matrix = repmat(status_flag, 2, 1);


%% Project Requirement 5: Assemble CAN Bus Transmission Packet
% Horizontally concatenate Norm_Power (2x2) and Flag_Matrix (2x2) to form a 2x4 matrix
CAN_Packet = [Norm_Power, Flag_Matrix];


%% Project Requirement 6: Evaluate Internal Resistance via Linear Algebra
I_mat = [5, 2; 2, 4];
V_vec = [14; 12];

% Calculate determinant
det_I = det(I_mat);

% Check if determinant is not exactly 0
if det_I ~= 0
    % Compute internal resistance vector using matrix inverse and multiplication
    R_vec = inv(I_mat) * V_vec;
end

% Compute trace and print using fprintf
trace_I = trace(I_mat);
fprintf('The trace of the current matrix is %d\n', trace_I);


%% Project Requirement 7: Determine Operating Mode
% Call the user-defined function with "Charge"
mode_status = setBMSMode("Charge");

% Horizontally concatenate with " Mode" and display
final_display = mode_status + " Mode";
disp(final_display);


%% --- User-Defined Function (Placed at the end of the script) ---
function mode = setBMSMode(vehicle_state)
    switch vehicle_state
        case "Drive"
            mode = "Active Discharging";
        case "Charge"
            mode = "Active Balancing";
        otherwise
            mode = "Standby";
    end
end