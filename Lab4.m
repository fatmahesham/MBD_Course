% Task 1
num = int32(input("Enter an integer number: "));
if num<50
    status = "LoW";
elseif num==50
    status = "perfect";
else
    status = "HIGH";
end
disp(status);

% Task 2
M=[10 20 30; 40 50 60; 70 80 90];
Sub_M = M(:, [1 end]);
V = ones(3, 1);
Final_Mat = [Sub_M, V];

% Task 3
vec = [2 4];
Rep_Mat=repmat(vec,2,1);
Math_Res=(Rep_Mat.^2).*0.5;
disp(Math_Res);

% Task 4
A = [1 2; 3 4];
B = [5; 11];
det_A=det(A);
X=inv(A)*B;
fprintf("The determinant of matrix A is %.2f\n", det_A);

% Task 5
user_color = input('Enter a color code (r, g, b): ', 's'); 

switch user_color
    case 'g'
        color = 'Green';
    case 'r'
        color = 'Red';
    case 'b'
        color = 'Blue';
    otherwise
        color = 'Unknown'; % Handles invalid inputs
end

fprintf('The selected color is %s\n', color);


