x = State(:,1);
y = State(:,2);
yaw = State(:,3);  

T = 5; 
freq = 1./T; 

for k = 1:45
   plot(x(k),y(k),'r>') 
   hold on
   plot(x(1:k),y(1:k)) 
   axis([-2 110 -2 110])
   pause(freq)
   
   if k ~= 45
       clf
   end
end

