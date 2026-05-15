% Task 1
num = 15.7;
num_int = int32(num);
is_positive=num_int>0;
disp("Units " + num2str(num_int));

% Task 2
M = [1:3; zeros(1,3); randi([5, 10], 1,3)]; 

% Task 3
A = [10 20 30; 40 50 60; 70 80 90];
sub_A = A(:, [2, end]);
disp(sub_A);

% Task 4
X = [2 4; 6 8];
X_square = X .^ 2;
X_square_DivBy2 = X_square ./2;
disp(X_square);
disp(X_square_DivBy2);

% Task 5
A = [1 2; 3 4];
B=[5; 6];
C=horzcat(A,B);
D=[7 8 9];
Final_Mat=[C; D];
disp(Final_Mat);

% Task 6
v=[1 2];
R1=repmat(v, 3, 2);
R2=repelem(v, 3);
disp(R1);
disp(R2);

% Task 7
A=[1 2; 2 2];
b=[2; 6];
A_inv=inv(A);
X= A_inv * b;
S=trace(A);
disp(A_inv);
disp(X);
disp(S);