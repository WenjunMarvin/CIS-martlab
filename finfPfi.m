function [out]= finfPfi(t,e)
in=sqrt(t*6000000);
out= erfc((e-1)*in);
end