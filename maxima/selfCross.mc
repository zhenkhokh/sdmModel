z:cos(t)+%i*sin(t);
phiB:3.92;
plot2d([parametric,realpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99))/z^3),imagpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99))/z^3)],[t,0,5.96]);
A0(phi,zR):=((zR-cos(phi))^2+sin(phi)^2)^.5;
float(asin(sin(1.318)/A0(1.318,(1-sqrt(11))/4))-asin(sin(1.318)/A0(1.318,(1+sqrt(11))/4)));
acos(1/4);
float(A0(1.318,(1+sqrt(11))/4))^2;
phiB:3.675;
float(asin(sin(phiB)/A0(phiB,(1-sqrt(11))/4)))+float(asin(sin(phiB)/A0(phiB,(1+sqrt(11))/4)))-float(asin(sin(phiB)/A0(phiB,-.99)));
plot2d([parametric,realpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99))),imagpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99)))],[t,0,2*3.14]);plot2d([parametric,realpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99))),imagpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99)))],[t,0,3.675]);
phiB_1plus_sqrt_2:.908;
phiB_99:2.605;
plot2d([parametric,realpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99))),imagpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99)))],[t,0,2*3.14]);plot2d([parametric,realpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99))),imagpart(((z-(1-sqrt(11))/4)*(z-(1+sqrt(11))/4)*(z+0.99)))],[t,0,2*3.14-phiB]);

