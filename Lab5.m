% Task 1
s=input("Enter your department name: ", 's');
N=input("Enter a matrix dimension N: ");
mat=randn(N);
empty=isempty(mat);
fprintf("Department Engineering created a "+num2str(N)+"x"+num2str(N)+" matrix. Is it empty?"+num2str(empty)+"\n");

% Task 2
M=[1:16];
M=reshape(M,4,4);
subM=M([3:end], [3:end]);
Id=eye(2);
subM=subM.^2;
Math_Mat=subM+Id;

% Task 3
v=10:-3:1;
Rep_A=repmat(v,3,2);
col=zeros(3,1);
Final_Block=[Rep_A col];

% Task 4
A = [1 3 0; 2 1 3; 4 2 3];
B = [1; 6; 3];
X=solveLinear(A, B);
disp(X);

% Task 5
N=0;
while(N<=0)
    N=input("Enter a strictly positive integer: ");
end
f = @(x) x.^2 + 10;

running_sum = 0;
for i = 1:N
    running_sum = running_sum + f(i);
end

fprintf('The final accumulated sum is %d\n', running_sum);



% function of task 4
function x = solveLinear(A, b)
    % Calculate the determinant of A
    detA = det(A);
    
    % Check if determinant is NOT exactly 0
    if detA ~= 0
        % Compute matrix inverse and multiply by b
        x = inv(A) * b;
    else
        % Return an empty array if det(A) is 0
        x = [];
    end
end