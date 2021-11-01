function[t]=al1(k,u)             %include function R0(t)
Tmin=0;
Tmax=0.02;
while (Tmax-Tmin)>u 
    t= Tmin+(Tmax-Tmin)/2;
    if (calR(t)/abs(calR(t))==calR(Tmin)/abs(calR(t)))
        Tmin= t;
    else
        Tmax=t;
    end 
 end        



