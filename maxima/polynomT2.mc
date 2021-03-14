pc:trigexpand(dn_1*cos(acos(x))+dn_2*cos(2*acos(x))+dn_3*cos(3*acos(x))+dn_4*cos(4*acos(x))+dn_5*cos(5*acos(x)));
ps:trigexpand(dn_1*sin(acos(x))+dn_2*sin(2*acos(x))+dn_3*sin(3*acos(x))+dn_4*sin(4*acos(x))+dn_5*sin(5*acos(x)));
pS:divide(ps,sqrt(1-x^2));
T2:divide(pc,pS[1]);
