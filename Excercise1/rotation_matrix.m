<<<<<<< HEAD
function X = rotation_matrix(theta,refPoint,dx,dy, phi)
%ROTATATIONMATRIX Summary of this function goes here
%   Detailed explanation goes here

%theta = (theta*2*pi)/360; 
%phi = (theta*2*pi)/360; 
theta = theta+phi

% rotation matrix
R = [cos(theta), -sin(theta), 0;
     sin(theta),  cos(theta), 0; 
     0,           0,          1];
Y = [dx;dy;0]; 

X = R*Y; 

end

||||||| 76778f4
=======
function X = rotation_matrix(theta,refPoint,dx,dy, phi)
%ROTATATIONMATRIX Summary of this function goes here
%   Detailed explanation goes here

%theta = (theta*2*pi)/360; 
%phi = (theta*2*pi)/360; 
theta = theta+phi

% rotation matrix
R = [cos(theta), -sin(theta), 0;
     sin(theta),  cos(theta), 0; 
     0,           0,          1];
Y = [dx;dy;0]; 

X = R*Y; 

end

>>>>>>> 5c2fda358e858042a2f97d249063ba069b88b516