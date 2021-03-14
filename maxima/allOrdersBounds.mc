/*e5_min:emin=(12*g52 + ((10*g32 + (4*g12*g21 -7*g22)*g31)*g41 - 12*g42)*g51)/8;/*

eq1:g51=1;
eq2:g41=1;
eq3:g31=1;
eq4:g21=1;
eq5:g11=1;
eq6:g12=1;

e5_max:emax=(16*g52 + ((4*g32 + (g12*g21 - 2*g22)*g31)*g41 - 8*g42)*g51)/32;
g22_5min:g22min = 2 *g12* g21;
g32_5min:g32min=(2.1461700*g22 - 3.2923400*g12*g21)*g31;
g42_5min:g42min=(((10-6*sqrt(2))*g32 - ((7 - 3 *sqrt(2))*g22 - 4*g12*g21)*g31)*g41)/(9-6*sqrt(2));
g52_5min:g52min=(((2*sqrt(2) + 13)*g42 + ((- 2*sqrt(2) - 10)*g32 + ((sqrt(2) + 7)*g22 - 4*g12*g21)*g31)*g41)*g51)/16;
root5:[emax,g22min,g32min,g42min,g52min,g51,g41,g31,g21,g11,g12];
sol5:solve([e5_max,g22_5min,g32_5min,g42_5min,g52_5min,eq1,eq2,eq3,eq4,eq5,eq6],root5);
float(ev(sol5,g52=660,g42=359,g32=75,g22=11));

e4_min:emin=(8*g42 + ((2*g22 - g12*g21)*g31 - 4*g32)*g41)/16;
g22_4min:g22min=3*g12*g21;
g32_4min:g32min=g22*g31;
g42_4max:g42max=(10*g32 + (12*g12*g21 - 11*g22)*g31)*g41/9;
g42_4min:g42min=(12*g32 + (3*g12*g21 - 7*g22)*g31)*g41/18;
root4:[emin,g22min,g32min,g42min,g42max,g41,g31,g21,g11,g12];
sol4:solve([e4_min,g22_4min,g32_4min,g42_4max,g42_4min,eq2,eq3,eq4,eq5,eq6],root4);
float(ev(sol4,g42=65,g32=33,g22=5));

e3_min:emin=(3*g32 + (2*g12*g21 - 3*g22)*g31)/6;
e3_max: emax=1/16*(4*g32  - g22*g31) + 3*emin/8;
g32_3min:g32min=(g22*g31 +21/8*emin)/4;
root3:[emin,emax,g32min,g31,g21,g11,g12];
sol3:solve([e3_min,e3_max,g32_3min,eq3,eq4,eq5,eq6],root3);
float(ev(sol3,g32=12,g22=4));

e2_min:emin=(2*g22  - g12*g21)/4;
sol2:solve([e2_min,eq4,eq5,eq6],[emin,g21,g11,g12]);
ev(sol2[1][1],g22=2);

