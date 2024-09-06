function [bubble_T,y1,y2]=T_bubble(x1,A1,B1,C1,A2,B2,C2,P,g1,g2)
x2=1-x1;
syms Y1 Y2 t
eq1=Y1+Y2==1;
eq2=(Y1*P)==(x1*g1*exp(A1-(B1/(C1+t))));
eq3=(Y2*P)==(x2*g2*exp(A2-(B2/(C2+t))));
E=solve(eq1,eq2,eq3);
bubble_T=E.t;
y1=E.Y1;
y2=E.Y2;
end


