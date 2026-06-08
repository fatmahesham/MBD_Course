% Task 1
num = uint8(input("Enter a decimal number: "));
fprintf("The converted 8-bit integer is: %d\n", num);

% Task 2
MyCell = { 'MATLAB', 2026, [1,2; 3,4]};
disp(MyCell{1});

% Task 3
student = struct( "name", "Ali", "age", 21, "gpa", 3.6);
if student.gpa>=3.5
    fprintf("Excellent student: %s\n", student.name);
else
    fprintf("Good student: %s\n", student.name);
end

% Task 4
for i=1:5
    product=i*10;
    fprintf("%d ",product);
end
fprintf("\n");

% Task 5
num=input("Enter a positive number: ");
while(num<=0)
    num=input( "Invalid! Enter a positive number: ");
end
disp(num);

% Task 6
color = input("Enter a color code (r, g, b): ", 's');
switch color
    case 'r' 
        str="Red";
    case 'b' 
        str="Blue";
    case 'g' 
        str="Green";
    otherwise
        str="Unknown";
end
disp(str);

% Task 7
x=0:0.1:2*pi;
y=sin(x);
plot(x, y, 'r--', 'LineWidth', 3);
title('Sine Wave');

% Task 8
v=[20, 35, 45];
subplot(1, 2, 1);
bar(v);
title('Bar Chart');
subplot(1, 2, 2);
pie(v);
title('Pie Chart');
close all;

% Task 9
x=1:5;
plot(x.^2, 'b');
title('x squared');
hold on;
plot(x.^3, 'g');
title('x cubed');
close all;

% Task 10
d=[1 2 3 4];
analyzeData(d);
function analyzeData(v)
   if length(v)>3
       stem(v);
   else
       disp("Data too short!");
   end
   sprintf("Data Length: %d\n", length(v));
   
end