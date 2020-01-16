% FIRST FUNCTION
syms x 
T=2; n=10; D=2; 
u1=piecewise(x>=0, 1,0);
u2=piecewise(x>=1, 1,0);
fn1=u1-u2;
fr(n,fn1,T,D)


% SECOND FUNCTION
syms x
T=2; n=10; D=2;
y1=x*piecewise(x>=0, 1,0);
y2=2*(x-1)*piecewise(x>=1, 1,0);
y3=(x-2)*piecewise(x>=2, 1,0);
fn2=y1-y2+y3;
fr(n,fn2,T,D)