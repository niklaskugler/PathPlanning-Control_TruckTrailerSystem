function w_dash = TimeReparametrization(n, w, dx_til)
%TIMEPARAMETRIZATION Summary of this function goes here
%   Detailed explanation goes here

% assign decoupling controller 
w1 = w(1); 
w2 = w(2); 

% determine controller parameter
w1_dash = n.*dx_til.*w1; 
w2_dash = w2; 

% define controller vector
w_dash = [w1_dash; w2_dash]; 

end

