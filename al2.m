function[t,k]=al2(t_0,CRN,N)   %t_0 could be anything inbetween 0 and T
j=0;
k=CRN-2;
Pf=0;

while (t~=t&&k~=k)

for i=N:1        %itration k    
    for j=i:N           %summation 
        Pft=Pf+(factorial(N)/(factorial(j)*factorial(N-j))*findPfofk(i)^j*(1-findPfofk(i)^(i-j)));
    end
    if Pft<Pf
        k=i;
        Pft=Pf;
    end
end

     t=al1(k,u);









