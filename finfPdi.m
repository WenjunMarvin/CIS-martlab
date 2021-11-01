function [out]= finfPdi(t,e,SNR)
in=sqrt(t*6000000/(2*SNR+1));
out= erfc((e-SNR-1)*in);
end