
M=1; rp = 6*M;
q=1;l=1;m=1;
N = 60;
%
OmegaP = sqrt(M/rp)/rp;
fp = 1-2*M/rp;
Ep = fp/sqrt(1-3*M/rp);
klm = -4*pi*q/(Ep*rp^2) * ...
        sqrt( (2*l+1)/(4*pi) * factorial(l-m)/factorial(l+m)) *...
        legendre(l,0);
klm = klm(m+1); % require m>0
omega = m*OmegaP;


xp = 2*M/rp;
[Dx1,x1] = cheb(N);
x1 = (1-xp)/2 * (x1+1) + xp;
Dx1 = Dx1 / ((1-xp)/2);

[Dx0,x0] = cheb(N);
x0 = (xp-0)/2 * (x0+1);
Dx0 = Dx0 / ((xp-0)/2);
