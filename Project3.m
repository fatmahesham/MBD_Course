speed=input("Enter cruising speed (km/h) > 50: ");
while speed<=50
    speed=input("Invalid! Speed must be > 50. Try again: ");
end
V_cruise=int16(speed);
fprintf("ACC Initialized. Cruising Speed set to %d km/h\n",V_cruise);


LiDAR_Grid=[10:10:40; zeros(1,4); 12,8,14,6; 50*ones(1,4)];
[X_length, Y_length]=size(LiDAR_Grid);
Center_ROI=LiDAR_Grid(X_length/2:X_length/2+1, Y_length/2:Y_length/2+1);
disp(Center_ROI);


Calibrated_ROI=(Center_ROI.^2)./10;
disp(Calibrated_ROI);


F = [2 -1; -1 2];
d = [4; 1];
fprintf("The determinant of F is %d\n",det(F));
V=inv(F)*d;
v_trans=V.';
disp(v_trans);


Safety_Block=[2 5; 2 5];
Safety_Block_rep=repmat(Safety_Block, 2,1);
disp(Safety_Block_rep);


ACC_CAN_Frame=horzcat(Center_ROI, Safety_Block);
disp(ACC_CAN_Frame);


assessThreat(4);
[x,y]=size(Calibrated_ROI);
min_dist=Calibrated_ROI(1,1);
for row_num=1:x
    A=Calibrated_ROI(row_num, :);
    M = min(A);
    if M<min_dist
        min_dist=M;
    end
end
message = assessThreat(min_dist);
switch message
    case "Safe"
        disp("Maintain Speed");
    case "Warning"
         disp("Apply Brakes");
    case "Critical"
        error("AEB TRIGGERED: Imminent Collision!");
end
function message=assessThreat(dist)
   if dist<5
       message="Critical";
   elseif dist>=5 && dist<=15
       message="Warning";
   else
       message="Safe";
   end
end