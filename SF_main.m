N = 60;
xp = 1/3;
[Dx1,x1] = cheb(N);
x1 = (1-xp)/2 * (x1+1) + xp;
Dx1 = Dx1 / ((1-xp)/2);

[Dx0,x0] = cheb(N);
x0 = (xp-0)/2 * (x0+1) ;
Dx0 = Dx0 / ((xp-0)/2);
