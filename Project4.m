vehicle_speed=single(120.5);
gear_state=uint8(4);
disp(class(vehicle_speed));


TempBuffer=zeros(4);
buffer_capacity = numel(TempBuffer);


whos


Temp_Calc = [100 200; 300 400];
clearvars  Temp_Calc;
clc;


default_padding = [uint8(255)];
CAN_Memory_Block = repmat(default_padding, 3, 4);