
function [xRef, dxRef, d2xRef, yRef, dyRef, d2yRef] = CalcRefValues(t,Parameters)
%CALCREFVALUES Summary of this function goes here

%   Detailed explanation goes here

a = Parameters.coef(1);
b = Parameters.coef(2);
c = Parameters.coef(3);
d = Parameters.coef(4);
e = Parameters.coef(5);
f = Parameters.coef(6);
x0 = Parameters.x0;
x1 = Parameters.x1; 
T = Parameters.T; 


% Time parametrization
tau = t./T; 

% defining a scaling parameter and its derivatives
s_tau = 3.*tau.^2 - 2.*tau.^3; 
ds_tau = 6.*tau - 6*tau.^2;  
d2s_tau = 6 - 12.*tau; 

% possible time parametrization of x and its derivatives
xRef = x0 + (x1-x0).*s_tau; 
dxRef = 1./T.*(x1-x0).*ds_tau;
d2xRef = 1./T.^2.*(x1-x0).*d2s_tau;

% create the polynomial
%{
minX = x0; 
maxX = x1;
length = 1000; 
x_til = linspace(minX-x0,maxX-x0,length);
%}

% possible time-parametrization of y and its derivatives
x_til=xRef-x0;
%y = a.*x_til.^5 + b.*x_til.^4 + c.*x_til.^3 + d.*x_til.^2 + e.*x_til.^1 + f.*x_til.^0;
% polynomial with time parametrization 
yRef = a.*x_til.^5 + b.*x_til.^4 + c.*x_til.^3 + d.*x_til.^2 + e.*x_til.^1 + f.*x_til.^0;

% first derivative without time parameter
dy_dx = 5.*a.*x_til.^4 + 4.*b.*x_til.^3 + 3.*c.*x_til.^2 + 2.*d.*x_til + e;

% first derivative with time parameter
dyRef = dy_dx.*dxRef;

% second derivative without time parameter
d2y_dx2 = 20.*a.*x_til.^3 + 12.*b.*x_til.^2 + 6.*c.*x_til + 2.*d; 

% second derivative with time parameter
d2yRef = d2y_dx2.*dxRef.^2 + dy_dx.*d2xRef; 

end
