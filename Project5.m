throttle_pos= single(85.5);
gear_status= uint8(5);
whos


LiDAR_Buffer=zeros(10, 10, 3, 'uint8');
disp(class(LiDAR_Buffer));


% 1. Dynamic Memory Allocation
tic;
for i = 1:10000
    dyn_array(i) = i;
end
elapsedTimeDyn = toc;
fprintf('Elapsed time is %.6f seconds. (Dynamic)\n', elapsedTimeDyn);
% 2. Preallocated Memory
tic;
stat_array = zeros(1, 10000); % Preallocate 10,000 elements
for i = 1:10000
    stat_array(i) = i;
end
elapsedTimeStat = toc;
fprintf('Elapsed time is %.6f seconds. (Preallocated)\n', elapsedTimeStat);


Temp_Filter = randn(1000, 1000);
clear Temp_Filter;
clc;
clear persistent;


 pad_seq=255* ones(2,1, 'uint8');
 Padding_Block=rep(pad_seq, 1, 2);
 CAN_Payload=horzcat(Padding_Block, zeros(2));
 
 