detout:true;
zP = z*matrix([1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1]);
A:matrix([1,0,0,0],[g21,1,0,0],[0,g31,1,0],[0,0,g41,1]);
P_ : z*matrix([1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1])-A;
P:invert(P_);
e:P.[g12,g22,g32,g42];
p:ratsimp(e[4]*(z-1)^4);
b:[coeff(p,z,0),coeff(p,z,1),coeff(p,z,2),coeff(p,z,3)];
load(to_poly_solve)$
Imin:ratsimp(-(b[1]-b[2]+b[3]-b[4])/16);
Imin_null:ratsimp(-(-2*b[4]+b[3]-b[1])/16);
to_poly_solve(4*b[2]-3*b[1]-b[3],g42);
