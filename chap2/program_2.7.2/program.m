clc
syms n
f = 0.5^n+(1/5)^n;
F = ztrans(f);
pretty(F);