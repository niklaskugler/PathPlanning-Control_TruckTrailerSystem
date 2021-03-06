function [x,y] = CallRotationMatrix(theta, refPoint, delta_x, delta_y)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Course/Lecturer: Automotive Control Systems / Wirtensohn
%   Authors:         N. Kugler, M. Reichelt
%
%   This function file implements the rotation around a given
%   viewpoint by considering the rotation matrix and the reference
%   point of the vehicle. 
%   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Generally valid 3D rotation matrix
R = [cos(theta), -sin(theta), 0;
     sin(theta),  cos(theta), 0; 
     0,           0,          1];

% Viewpoint vector around which is rotated
Y = [delta_x;
     delta_y;
     0];    % Equals 0 due to 2D consideration (no 3D model) 

% Matrix vector multiplication
% Viewpoint rotated by corresponding orientation angle theta
X = R*Y; 

% Coordinates of the rotated viewpoint with regard to the referejjnce point
x = X(1) + refPoint(1);
y = X(2) + refPoint(2);

end

