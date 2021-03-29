z:cos(t)+%i*sin(t);
F(z):=z^2+.5*z+.75;
W(z):=F(z)/z^2;
plot2d([[parametric,realpart(F(z)),imagpart(F(z)),[t,0,2*3.14]],[parametric,realpart(W(z)),imagpart(W(z)),[t,0,2*3.14]]],[style, [lines,1,1], [points,1,3,6]],[legend,"F(z)","W(z)"],[xlabel,"Re"], [ylabel,"Im"]);
