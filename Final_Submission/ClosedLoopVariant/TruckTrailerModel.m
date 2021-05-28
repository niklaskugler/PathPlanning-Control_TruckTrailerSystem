function dx_T = TruckTrailerModel(x_T, u, Parameters)
%TRUCKTRAILERMODEL Summary of this function goes here
%   Detailed explanation goes here

% structure of the truck-trailer-model's equation
% dx_T = f(x_T, u) 

% initialize necessary values for formular implementation
d_0 = Parameters.d_0;
d_1 = Parameters.d_1;
theta_0 = x_T(3); 
theta_1 = x_T(4);
phi = x_T(5); 
u_1 = u(1); % u_1 = v_0
u_2 = u(2);

% define elements of the truck-trailer-vector (vehicle-model)
dx_0 = u_1*cos(theta_0); 
dy_0 = u_1*sin(theta_0); 
dtheta_0 = u_1/d_0 * tan(phi); 
dtheta_1 = u_1/d_1 * sin(theta_0 - theta_1);
dphi = u_2; 

% define the truck-trailer-vector (vehicle-model)
dx_T = [dx_0; 
        dy_0; 
        dtheta_0; 
        dtheta_1; 
        dphi]; 

end
