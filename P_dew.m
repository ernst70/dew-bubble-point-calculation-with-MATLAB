function [dew_P,x1,x2]=P_dew(y1,P1sat,P2sat,a1,a2)
y2=1-y1;
syms dew_p X1 X2
% g1=exp(a1*x2^2)
% g2=exp(a2*x1^2)
eq1=X2+X1==1;
eq2=(y1*dew_p)==(X1*exp(a1*X2^2)*P1sat);
eq3=(y2*dew_p)==(X2*exp(a2*X1^2)*P2sat);
e=solve(eq1,eq2,eq3);
dew_P=e.dew_p;
x1=e.X1;
x2=e.X2;
end

