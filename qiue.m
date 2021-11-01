function[out]= qiue(t,k,SNR)
tu=1;
out=tu^2*((sqrt(2*SNR+1))/(t*6000000)*(1-Pd(k))+SNR+1);

end
