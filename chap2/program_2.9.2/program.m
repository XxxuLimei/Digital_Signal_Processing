clc
syms n z
Xz = 2*z/(z-2)^2;
f = iztrans(Xz,n);
pretty(f)