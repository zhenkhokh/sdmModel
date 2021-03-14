mu0 : g22 - a2*(2*g22  - a1*g12*g21)/4;
mu1 : (2*g22  + a1*g12*g21)/4;
mu2 : (a1*g22) — g12*g21;
ratsimp(((2*g22-a1*g12*g21)/4+(mu1+mu2-mu0))/g11/g21);
(ev(ratsimp(g22/a2 - (mu0+mu1+mu2))))
