
function dState = ODEFunc(t, State, Parameters)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    
    %%
    % calculate reference values of x and y
    [xRef, dxRef, d2xRef, yRef, dyRef, d2yRef, n, dxRef_t] = CalcRefValues(t, Parameters);
    
    %%
    % steering Law calculate input reference values v and phi
    ny = TrackingErrorStab(xRef,dxRef,d2xRef,yRef,dyRef,d2yRef, Parameters, State); 
    
    %%
    % 
    w = LinearizingFeedback(ny, State, Parameters); 
    
    %% 
    %
    w_dash = TimeReparametrization(n, w, dxRef_t); 
    
    %%
    % simple vehicle model(time parametrized calculated state) 
    dState = Vehicle(State,dxRef_t, w_dash,n,Parameters); 
    
end

