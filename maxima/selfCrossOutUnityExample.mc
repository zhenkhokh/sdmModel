z:cos(t)+%i*sin(t);
A0(phi,zR):=((zR-cos(phi))^2+sin(phi)^2)^.5;
float(asin(sin(1.318)/A0(1.318,(1-sqrt(11))/4))-asin(sin(1.318)/A0(1.318,(1+sqrt(11))/4)));
acos(1/4);
float(A0(1.318,(1+sqrt(11))/4))^2;
phiB:3.675;
phiB_1plus_sqrt_2:.908;
phiB_99:2.605;
phi:phiB_1plus_sqrt_2;
phaseMustBeZeroOrPi(phi):=asin(sin(phi)/A0(phi,(1-sqrt(11))/4))-(asin(sin(phi)/A0(phi,(1+sqrt(11))/4)))+(asin(sin(phi)/A0(phi,-.99)));
float(phaseMustBeZeroOrPi(phiB_1plus_sqrt_2));
phaseMustBeZeroOrPi_(phi):=asin(sin(phi)/A0(phi,(1-sqrt(11))/4))+(asin(sin(phi)/A0(phi,(1+sqrt(11))/4)))-(asin(sin(phi)/A0(phi,-.99)));
float(phaseMustBeZeroOrPi_(phiB_99));
F(z):=(z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99);
plot2d([[parametric,realpart(F(z)),imagpart(F(z)),[t,phiB,2*3.14]],[parametric,realpart(F(z)),imagpart(F(z)),[t,0,2*3.14-phiB]]],[legend,"from","to"]);

