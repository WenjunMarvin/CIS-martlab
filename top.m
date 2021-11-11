clear all;
close all;



Nc= 10;              % number of PU
fs=6000000;          % sampling frequency
Pds = 0.98; % least needed Pd
%Pfa=0.03;

i= 15;          % chanel number 
T = 0.02;       % frame duration 

Pf=0.01:0.01:1;  % X-axis
SNR_db=-10; 
SNR=0.1;
%var= ;          % Variance
%N0= x;          %  noise power
%n=`
sz= size(Pf);
Pdsys=zeros(sz);

SU=ones(20);
PU=[1 1 1 0 0 0 0 0 0 0 ;
    1 1 1 0 0 0 0 0 0 0 ;
    0 0 1 1 1 0 0 0 0 0 ;
    0 0 1 1 1 0 0 0 0 0 ;
    0 0 0 0 1 1 1 0 0 0 ;
    0 0 0 0 0 0 1 1 1 0 ;
    0 0 0 0 0 0 1 1 1 0 ;
    0 0 0 0 0 0 0 1 1 1 ;
    0 0 0 0 0 0 0 1 1 1 ;
    1 1 1 0 0 0 0 0 0 0 ;
    0 0 0 1 1 1 0 0 0 0 ;
    0 0 0 0 0 1 1 1 0 0 ;
    1 1 1 0 0 0 0 0 0 0 ;
    0 0 0 1 1 1 0 0 0 0 ;
    0 0 0 0 0 0 0 1 1 1 ;
     0 0 0 1 1 1 0 0 0 0 ;
    0 0 0 0 0 1 1 1 0 0 ;
    1 1 1 0 0 0 0 0 0 0 ;
    1 1 1 0 0  0 0 0 0 0 ;
    0 0 0 0 0 0 0 1 1 1;
];

for i=1:Nc 
    CRN(i)= (sum(PU(:,i)==1));
end    




for i=1:Nc
Pdsingle(i)= 1-(1-0.98)^(1/CRN(i));
end
N=floor(2*(qfuncinv(0.03)-qfuncinv(0.98))^(2)*SNR^(-2)); %minimum N 
 for i=1:10
e(i)=finde(CRN(i));
 end


for i = 1:length(Pf)

  
   gp(i)=0;
     
    for sa=1: N
     
     n = randn(1,N); % noise 
     s = (SNR).*randn(1,N); % Primary User Signal
     y= s + n; % pu present and adding noise 
     
     
     energy = abs(y).^2; % Energy of received signal over N samples
     energy_in(sa) =(1/N).*sum(energy); % Test Statistic for the energy detection
        thresh(i) = (qfuncinv(Pf(i))./sqrt(N))+ 1;
      
              if(energy_in(sa)>=thresh(i))
          gp(i) = gp(i)+1;
              end
    end 
      Pd(i) =gp(i)/N; 
   
 end  
subplot (1,2,1)
plot(smooth(Pf,20),smooth(Pd,20)) ;
xlabel('Pf')
ylabel('Pd')
legend('Single CR');
hold on 

for i = 1:Nc
Pmuld=1-(1-Pd).^(CRN(i));
Pdsys=Pdsys+Pmuld;
subplot (1,2,1)
plot(smooth(Pf,20),smooth(Pmuld,20)) ;
hold on 
end

Pdsys= Pdsys/10;
subplot (1,2,2)
plot(smooth(Pf,20),smooth(Pd,20)) ;

hold on
plot(smooth(Pf,20),smooth(Pdsys,20)) ;
legend('Single CR','General Sys')
