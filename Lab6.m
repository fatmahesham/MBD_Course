% Task 1
N=input("Enter a positive integer greater than 2: ");
while N<=2
    N=input("Invalid! Try again: ");
end
mat=randn(N);
sub_mat=mat([end-1, end], [end-1, end]);

% Task 2
solveSystem([1 2; 2 4], [5; 10]);

% Task 3
v=[1 2];
Rep_Mat=repmat(v,2,3);
c = [10; 20];
Final_Mat= horzcat(c, Rep_Mat);
Final_Mat=Final_Mat.^2;

% Task 4
word = 'MATLAB';
int32_word = int32(word);
word_length=size(word);
fprintf("the length of this word is %d\n",word_length);
z=diag(int32_word);

% Task 5
f = @(x) x.^2 + 2.*x;
sum=0;
for i=1:5
    sum=sum+f(i);
end

% Task 6
op=input("Enter operation (add, sub): ", 's');
A = [1 2; 3 4];
B = [5 6; 7 8];
switch op
    case "add"
        sol=A+B;
    case "sub"
        sol=B-A;
end

% Task 7
% Create the original matrix M
M = [12 -5 8; -3 9 -1];
% Create a logical mask for elements less than 0
mask = M < 0;
% Use logical indexing to replace negative elements 
% with their absolute value multiplied by 10
M(mask) = abs(M(mask)) * 10;
% Display the updated matrix
disp(M);

% Task 8
I = eye(2);
Big_I=repelem(I,2,2);
disp( "Trace is: " + num2str(trace(Big_I)));

% Task 9
% Create the 2x2 matrix
Data = [10 20; 30 40];
% Save the matrix to sensor_data.mat
save('sensor_data.mat', 'Data');
% Clear the workspace
clearvars;
% Load the data back into the workspace
load('sensor_data.mat', 'Data');
% Perform non-conjugate transpose and element-wise division by 10
result = Data.' ./ 10;
% Display the final result
disp(result);

% Task 10
% 1. Generate a 2x3x4 array of normally distributed random numbers
A = randn(2, 3, 4);
% 2. Extract the entire second page and store it as Page2
Page2 = A(:, :, 2);
% 3. Transpose Page2 (converting from 2x3 to 3x2)
transposedMatrix = Page2';
% 4. Find the number of elements and print the result
numElements = numel(transposedMatrix);
fprintf('The extracted matrix contains %d elements.\n', numElements);

% function of task 2
function x = solveSystem(A, b)
    % Calculate the determinant of A
    detA = det(A);
    
    % Check if determinant is NOT exactly 0
    if detA ~= 0
        % Compute matrix inverse and multiply by b
        x = inv(A) * b;
        disp(X);
    else
        % Return an empty array if det(A) is 0
        x = [];
        disp("No unique solution" );
    end
end