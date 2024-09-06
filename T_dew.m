function [dew_T,x1,x2]=T_dew(a1,a2,y1,P,A1,B1,C1,A2,B2,C2)
y2=1-y1;
syms dew_t X1 X2
%P_sat=exp(A-(B/(C+dew_t)))
% g1=exp(a1*x2^2)
% g2=exp(a2*x1^2)
eq1=X2+X1==1;
eq2=(y1*P)==(X1*exp(a1*X2^2)*exp(A1-(B1/(C1+dew_t))));
eq3=(y2*P)==(X2*exp(a2*X1^2)*exp(A2-(B2/(C2+dew_t))));
eq=solve(eq1,eq2,eq3);

dew_T=eq.dew_t;
x1=eq.X1;
x2=eq.X2;
end