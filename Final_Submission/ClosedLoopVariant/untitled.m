k0 = 0.0625; 
k1 = -0.5; 
k2 = 0.75; 
k3 = -2; 

H = [k3  k1  0   0; 
     1   k2  k0  0; 
     0   k3  k1  0; 
     0   1   k2  k0]; 
 
 eig(H) 