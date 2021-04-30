% bisection method to find the roots of f(x)=0
% and (a,b) is the interval where root lie

clear;clc;
syms f(x)
f(x)    =  exp(-x)-x;  % function
a       =  0;          % first point a
b       =  1;          % second point b and 
r       =  (a+b)/2;    % mid point of interval (a,b)
epsilon =  1e-12;      % accuracy  
nstep   =  0;          % to count number of step
while (r>epsilon && abs(a-b)>epsilon)
    if f(r)*f(a)>0
        a = r;
    else
        b = r;
    end
    r     = (a+b)/2;
    nstep = nstep+1;
end