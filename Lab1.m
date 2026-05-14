% Task 1
my_num = 50;
my_str = char("Hello World");
disp("my_num stores " + my_num);
disp("my_str stores " + my_str);
disp(size(my_str));

% Task 2
M = [1:3; 4:6];
V = 20 : -2 : 10;
disp(M);
disp(V);

% Task 3
disp(M(2, 3));
disp(M(:, 1));
disp(M(end));

% Task 4
A=[1 2; 3 4];
B=[2 4; 6 8];
mul = A .* B;
rDiv = A ./ B;
ATrans = A.';
disp(mul);
disp(rDiv);
disp(ATrans);

% Task 5
A = [1 2; 3 4];
B = [5 6; 7 8];
C_horz = horzcat(A,B);
C_vert = vertcat(A,B);
disp(C_horz);
disp(C_vert);

% Task 6
disp(repmat(A,3,2));