function [bubble_P,y1,y2]=P_bubble(g1,g2,x1,P1sat,P2sat)
%raul equation : (y_i *P)=(x_i *g_i *Psat_i)
% sum(y_i *P)=sum(x_i *g_i *Psat_i)
x2=1-x1;
bubble_P=(x1*g1*P1sat)+(x2*g2*P2sat);
syms Y1 Y2
Y=solve((Y1*bubble_P)==(x1 *g1 *P1sat),(Y2*bubble_P)==(x2*g2*P2sat));
y11=Y.Y1;
y22=Y.Y2;
y1=eval(y11);
y2=eval(y22);
end