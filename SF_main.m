% 2202.01794
clear 
M=1; rp = 6*M;
q=1;l=1;m=1;
N = 60;  

%
la = 4*M;
OmegaP = sqrt(M/rp)/rp;
fp = 1-2*M/rp;
Ep = fp/sqrt(1-3*M/rp);
klm = -4*pi*q/(Ep*rp^2) * ...
        sqrt( (2*l+1)/(4*pi) * factorial(l-m)/factorial(l+m)) *...
        legendre(l,0);
klm = klm(m+1); % require m>0
omega = m*OmegaP;
s = -1i*omega*la;

xp = 2*M/rp;
% [1,xp]
[Dx1,x1] = cheb(N);
x1 = (1-xp)/2 * (x1+1) + xp;
Dx1 = Dx1 / ((1-xp)/2);
Dx12 = Dx1^2;
% [xp,0]
[Dx0,x0] = cheb(N);
x0 = (xp-0)/2 * (x0+1);
Dx0 = Dx0 / ((xp-0)/2);
Dx02 = Dx0^2;


x = [x1;x0(2:end)]; % total grid vec
D = zeros(2*N+1);
D(1:N,1:N+1) = Dx1(1:N,:);
D(N+2:end,N+1:end) = Dx0(2:end,:);
D2 = zeros(2*N+1);
D2(1:N,1:N+1) = Dx12(1:N,:);
D2(N+2:end,N+1:end) = Dx02(2:end,:);
% D2 = D^2;

a2 = x.^2.*(1-x);
a1R = x.*(2-3*x); 
a1I = imag(s*(1-2*x.^2)); 
a0R = -(l*(l+1) + x + s^2*(1+x)); 
a0R(N+1)=0;
a0I = imag(-2*s*x);
a0I(N+1)=0;

jump_row = zeros(1,2*N+1);
jump_row(1:N) = Dx1(end,1:N);
jump_row(N+2:end) = -Dx0(1,2:end);
jump_row(N+1) =  Dx1(end) - Dx0(1);

A11 = a2.*D2 + a1R.*D + diag(a0R);
A11(N+1,:) = jump_row;
A12 = -a1I.*D - diag(a0I);
A22 = A11;
A21 = -A12;
A = [A11,A12;A21,A22];
%
Hp = 2*M/la *(log(1-xp) - 1/xp + log(xp) );
Zp = xp/la*exp(s*Hp);
klm_res = 2*M*fp*klm/Zp;
jp = klm_res/(xp^2*(1-xp));
SR = zeros(2*N+1,1);
SR(N+1) = real(jp);
SI = zeros(2*N+1,1);
SI(N+1) = imag(jp);
S_res = [SR;SI];

phi = A\S_res;

phiR = phi(1:2*N+1);
phiI = phi(2*N+2:end);
