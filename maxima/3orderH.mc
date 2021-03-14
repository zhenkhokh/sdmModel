zP = z*matrix([1,0,0],[0,1,0],[0,0,1]);
A:matrix([1,0,0],[g21,1,0],[0,g31,1]);
P_ : z*matrix([1,0,0],[0,1,0],[0,0,1])-A;
P:invert(P_);
e:P.[g12,g22,g32];
p:ratsimp(e[3]*(z-1)^3);
b:[coeff(p,z,0),coeff(p,z,1),coeff(p,z,2)];
load(to_poly_solve)$
to_poly_solve(3/2*b[2]-b[3],g32);
Imax:(b[1]-b[2]+b[3])/8;
