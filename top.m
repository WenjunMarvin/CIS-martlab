N= 10;              % number of PU
f=6000000;          % sampling frequency
Pdleast = 0.98; % least needed Pd
Pfa=0.03;
PHo=0.6;
PHi=0.4;
i= 15;          % chanel number 
T = 0.02;       % frame duration 
M=0;            % Mean
n=20;
SNR=[-30:0.1:0]; 
%var= ;          % Variance
%N0= x;          %  noise power
%n=`

%Var= N0^2/2;


SU=ones(20);
PU=[1 1 1 0 0 0 0 0 0 0 ;
    1 1 1 1 0 0 0 0 0 0 ;
    0 0 1 1 1 0 0 0 0 0 ;
    1 1 1 1 1 0 0 0 0 0 ;
    1 1 1 1 1 1 1 1 1 1 ;
    0 0 0 0 0 1 1 1 1 1 ;
    0 0 0 0 0 0 1 1 0 0 ;
    0 0 0 0 0 0 0 1 1 0 ;
    0 0 0 0 0 0 0 0 1 1 ;
    1 1 1 1 0 0 0 0 0 0 ;
    0 0 0 1 1 1 0 0 0 0 ;
    0 0 0 0 0 1 1 1 1 0 ;
    0 0 0 1 1 1 1 0 0 0 ;
    0 0 1 1 1 0 0 0 0 0 ;
    0 0 0 0 0 0 1 1 1 1 ;];

CRN(N)=0;
for i=1:N 
    CRN(i)= (sum(PU(:,i)==1));
end    














u1 =randn(1,n)+1i*randn(1,n);
u2 =randn(1,n)+1i*randn(1,n);
u3 =randn(1,n)+1i*randn(1,n);
u4 =randn(1,n)+1i*randn(1,n);
u5 =randn(1,n)+1i*randn(1,n);
u6 =randn(1,n)+1i*randn(1,n);
u7 =randn(1,n)+1i*randn(1,n);
u8 =randn(1,n)+1i*randn(1,n);
u9 =randn(1,n)+1i*randn(1,n);
u10 =randn(1,n)+1i*randn(1,n);
u11 =randn(1,n)+1i*randn(1,n);
u12 =randn(1,n)+1i*randn(1,n);
u13 =randn(1,n)+1i*randn(1,n);
u14 =randn(1,n)+1i*randn(1,n);
u15 =randn(1,n)+1i*randn(1,n);
u16 =randn(1,n)+1i*randn(1,n);
u17 =randn(1,n)+1i*randn(1,n);
u18 =randn(1,n)+1i*randn(1,n);
u19 =randn(1,n)+1i*randn(1,n);
u20 =randn(1,n)+1i*randn(1,n);

u=[u1;u2;u3;u4;u5;u6;u7;u8;u9;u10;u11;u12;u13;u14;u15;u16;u17;u18;u19;u20];