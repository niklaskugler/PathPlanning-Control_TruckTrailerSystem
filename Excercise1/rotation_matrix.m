
function X = rotation_matrix(theta,refPoint,dx,dy, phi)
%ROTATATIONMATRIX Summary of this function goes here
%   Detailed explanation goes here

%theta = theta+phi

% rotation matrix
R = [cos(theta), -sin(theta), 0;
     sin(theta),  cos(theta), 0; 
     0,           0,          1];
 
Y = [dx;dy;0]; 

X = R*Y; 

end

