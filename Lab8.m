% Task 1
classList = createClassList('Alice', 'Bob', 'Charlie');

% Task 2
disp(fibonacci_rec(7));

% Task 3
% 1. Create cell arrays for names and departments
names = {'John', 'Sara', 'Mike'};
depts = {'HR', 'IT', 'IT'};
% 2. Combine them into a table with specific variable names
empTable = table(names', depts', 'VariableNames', {'names', 'depts'});
% 3. Convert the depts column into a categorical array
empTable.depts = categorical(empTable.depts);
% 4. Use logical indexing to extract rows where department is 'IT'
itTable = empTable(empTable.depts == 'IT', :);
% 5. Display the resulting table
disp(itTable);

% Task 4
fruits = ["Cherry", "Apple", "Banana"];
sort(fruits);
joined_str = fruits(1)+"-"+fruits(2)+"-"+fruits(3);
disp(joined_str);

% Task 5
try
    A = [1 2; 3 4];
    B=[1:4];
    mul=A*B;
catch
    disp("Matrix mismatch detected. Applying fallback.");
    mul=B(1:2).* A(1, 1:2);
    
end
disp(mul);

% Task 6
% Generate X and Y coordinate matrices from -3 to 3 with a step of 0.1
[X, Y] = meshgrid(-3:0.1:3);
% Compute the Z matrix using the equation Z = cos(X) + sin(Y)
Z = cos(X) + sin(Y);
% Create a 3D surface plot of X, Y, and Z
surf(X, Y, Z);
% Change the colormap to 'turbo'
colormap("jet");
% Add a color scale bar to the side of the plot
colorbar;

% Task 7
car(1)=struct( "Model", 'Sedan', "price", 25000);
car(2)=struct( "Model", 'SUV', "price", 40000);
car(3)=struct( "Model", 'Truck', "price", 30000);
size=length(car);
i=size;
while i>0
    for j=1:i-1
       if car(j).price<car(j+1).price
           temp=car(j);
           car(j)=car(j+1);
           car(j+1)=temp;
       end
    end
    i=i-1;
end
for i=1:length(car)
   disp(car(i));
end

%%%%%%%%%%%%%%%%%%%%% functions %%%%%%%%%%%%%%%%%%%
% Task 1
classList = createClassList('Alice', 'Bob', 'Charlie');
function classList = createClassList(varargin)
    % Determine how many names were passed
    numStudents = nargin;
    
    % Preallocate the vector of structures
    classList = struct('Name', cell(1, numStudents), ...
                       'Grade', cell(1, numStudents));
    
    % Populate the structures using a for loop
    for i = 1:numStudents
        classList(i).Name = varargin{i};
        classList(i).Grade = [];
    end
end

% Task 2
function result = fibonacci_rec(n)
    if n == 0
        result = 0;
    elseif n == 1
        result = 1;
    else
        result = fibonacci_rec(n - 1) + fibonacci_rec(n - 2);
    end
end

% Task 3
