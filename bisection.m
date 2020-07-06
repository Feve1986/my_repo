%%Return results of the bisection method
%Input [a,b]上的实函数f, real number a,b, postive integer M
%Input postive real number delta,epsilon
%Precondition f is continuous on [a,b]
%precondition sgn(f(a)) 不等于 sgn(f(b))
%Output c,h,k
%Postconditions |f(c)|<epsilon or |h|<delta or k=M
function [c,h,k]=bisection(a,b,delta,epsilon,M)

h = b-a
u = f(a);
for k=1:M do
    h=h/2;
    c=a+h;
    w=f(c);
    if abs(h)<delta || abs(w)<epsilon
        break
    else if sgn(w)==sgn(u)
            a=c;
        end
    end
end    
    
    
    
    

