z:cos(t)+%i*sin(t);
A0(phi,zR):=((zR-cos(phi))^2+sin(phi)^2)^0.5;
A1(phi,zR,zI):=((zR-cos(phi))^2+(sin(phi)-zI)^2)^0.5;
zII:sqrt(11)/4;phiA:1.239;float(asin((sin(phiA)-zII)/A1(phiA,1/4,zII)))+float(asin((sin(phiA)+zII)/A1(phiA,1/4,-zII)))+float(asin((sin(phiA))/A0(phiA,-.99)));
plot2d([parametric,realpart(((z-(1-%i*sqrt(11))/4)*(z-(1+%i*sqrt(11))/4)*(z+0.99))),imagpart(((z-(1-%i*sqrt(11))/4)*(z-(1+%i*sqrt(11))/4)*(z+0.99)))],[t,0,2*3.14]);
