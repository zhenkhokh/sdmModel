z:cos(t)+%i*sin(t);
phiFeature:5.96;
F(z):=(z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99);
W(z):=F(z)/z^3;
plot2d([[parametric,realpart(W(z)),imagpart(W(z)),[t,0,phiFeature]],[parametric,realpart(W(z)),imagpart(W(z)),[t,phiFeature,6.28]]],[legend,"to","from"]);
