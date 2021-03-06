
function dState = Vehicle(State,dxRef_t,w_dash,n,Parameters)
%VEHICLE Summary of this function goes here
%   Detailed explanation goes here
L = Parameters.L; 

x = State(1); 
y = State(2); 
theta = State(3);
xi = State(4); 

%
w1_dash = w_dash(1);
w2_dash = w_dash(2);

% define velocity v
v = xi.*dxRef_t.*n; 

% dState Vector
dState(1,1) = v.*cos(theta);      % dx
dState(2,1) = v.*sin(theta);      % dy
dState(3,1) = v./L.*w2_dash;      % dtheta
dState(4,1) = w1_dash;            % dxi

end
