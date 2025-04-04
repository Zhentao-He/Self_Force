N = 32;
[Dy,y] = cheb(N);
kappa = 3; xB = -1;
x = xB*(1 - 2*sinh(kappa*(1-xB*y))/sinh(2*kappa));

% plot(x,0*x,'.')
% hold on
% plot(y,0*y+.1,'.')

xy = kappa * xB^2 * 2 * cosh(kappa*(1-xB*y)) / sinh(2*kappa); % col vec
Dx = Dy./xy;

