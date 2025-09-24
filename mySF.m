clear
% close all
M = 1; 
l = 5; m = 5;

N = 500;
[D,x] = cheb(N);
x = (x+1)/2;
D = D/(1/2);
D2 = D^2;

rp = 4*M; xp = 2*M/rp;

% xp = x(N/2+1);
% rp = 2*M/xp;

q = 1; % scalar charge



% parameters
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

Hp = 2*M/la *(log(1-xp) - 1/xp + log(xp) );
Zp = xp/la*exp(s*Hp);
klm_res = 2*M*fp*klm/Zp;



a2 = x.^2 .* (1-x);
a1 = x.* (2 - 3*x) + s*(1 - 2*x.^2);
a0 = -(l*(l+1) + x + 2*s*x + s^2 *(1+x) );

A = a2.*D2 + a1.*D + a0;
if l == 0
    A(end,:) = 2*D(end,:) - 1; % regular condition
end

% S = klm_res * sin(N*(x-xp)/2)./(N*(x-xp)/2);
% figure
% plot(x, sin(N*(x-xp)/2)./(N*(x-xp)/2))

% w = 2e-3;
% S = klm_res *  exp( -(x-xp).^2/(2*w^2) ) / (sqrt(2*pi)*w);
% figure
% plot(x, exp(-((x-xp)*100).^2))
% 
S = 0*x; S(x==xp) = klm_res*N;

phi = A\S;
% figure
plot(x,real(phi),'LineWidth',1)

