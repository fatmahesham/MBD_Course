% Task 1
user_val = input("Enter a decimal number: ");
int_val = int32(user_val);
fprintf("The converted integer is: %d\n", int_val);

% Task 2
size=input("Enter matrix size : ");
mat=zeros(size);
mat(1, :)=randi([1, 20]);
disp(mat)

% Task 3
 named_Data = [1 2 3 4; 5 6 7 8; 9 10 11 12];
 Extracted_Data= named_Data([1, 3] , end);
 
 % Task 4
 A = [2 4; 6 8];
 B=[2 2; 2 2];
 A = A .^ 2;
 Math_Result=A./B;
 disp(Math_Result);
 
 % Task 5
 v=[7 8];
 Repeated_Mat=repmat(v,2,1);
 vector_col = [9; 9];
 Combined_Mat = horzcat(Repeated_Mat, vector_col);
 disp(Combined_Mat);
 
 % Task 6
 A = [1 2; 2 2];
 b = [2; 6];
 x=inv(A) * b;
 fprintf("The trace of the matrix is %d\n",trace(A));
 fprintf("%g ", x);