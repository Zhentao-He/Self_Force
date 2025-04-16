N = 48;
[Dy,y] = cheb(N);
kappa = 4; xB = -1;
x = xB*(1 - 2*sinh(kappa*(1-xB*y))/sinh(2*kappa));

% plot(x,0*x,'.')
% hold on
% plot(y,0*y+.1,'.')

xy = kappa * xB^2 * 2 * cosh(kappa*(1-xB*y)) / sinh(2*kappa); % col vec
xyy = -2*kappa^2 * xB^3 * csch(2*kappa) * sinh(kappa*(1-xB*y));
Dx = Dy./xy;
Dxx = - Dy .* xyy ./ xy.^3 + Dy^2 ./ xy.^2;
