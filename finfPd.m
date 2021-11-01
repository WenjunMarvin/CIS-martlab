function [out]= finfPd(t,k,e,SNR)
Pdi= finfPdi(t,e,SNR);
for i=k:15
    out=out+ (factorial(15)/(factorial(i)*factorial(15-i))*Pdi^(i)*(1-Pdi)^(15-i));
end

end

  