function [out]= finfPf(t,k,e)
Pfi= finfPfi(t,e);
for i=k:15
    out=out+ (factorial(15)/(factorial(i)*factorial(15-i))*Pfi^(i)*(1-Pfi)^(15-i));
end

end