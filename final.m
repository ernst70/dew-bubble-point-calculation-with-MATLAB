clear all
clc
disp('welcome to dew/bubble point calculation program for binary mixture ')
first_component=input('pls type the first component with small letters \n','s');
second_component=input('pls type the second component with small letters \n','s');
disp('put the value of x1["quality of liquid"] or y1["quality of gas"] and P[kpa] or T[degree of centigrade]')
disp('if you dont have the information put nan')
x1=input('put the value of x1 and if you dont have the value put nan[it must between 0 and 1] \n');
y1=input('put the value of y1 and if you dont have the value put nan[it must between 0 and 1] \n');
P=input('put the value of pressure in kpa unit and if you dont have the value put nan \n');
T=input('put the value of temp in centigrade unit and if you dont have the value put nan \n');
a1=input('margules-coefficent-for-first-component \n');
a2=input('margules-coefficent-for-second-component \n');
antonie_coefficient=xlsread("parameters-for-antonie-equation.xlsx");
x2=1-x1;
y2=1-y1;
% choosing type of calc
if isnan(x1)
    if isnan(P)
        disp('so here we go to calculate dew pressure')
        [P1sat,P2sat,A1,A2,B1,B2,C1,C2]=sat_P(first_component, second_component,T);
        [dew_P,x1,x2]=P_dew(y1,P1sat,P2sat,a1,a2)
    elseif isnan(T)
        disp('so here we go to calculate dew tempreture')
        [T1sat,T2sat,A1,A2,B1,B2,C1,C2]=sat_T(first_component,second_component,P);
        [dew_T,x1,x2]=T_dew(a1,a2,y1,P,A1,B1,C1,A2,B2,C2)
    end
elseif isnan(y1)
    if isnan(P)
        disp('so here we go to calculate bubble pressure')
        [g1,g2]=margules(x1,x2,a1,a2);
        [P1sat,P2sat,A1,A2,B1,B2,C1,C2]=sat_P(first_component, second_component,T);
        [bubble_P,y1,y2]=P_bubble(g1,g2,x1,P1sat,P2sat)
    elseif isnan(T)
        disp('so here we go to calculate bubble tempreture')
        [g1,g2]=margules(x1,x2,a1,a2);
        [T1sat,T2sat,A1,A2,B1,B2,C1,C2]=sat_T(first_component,second_component,P);
        [bubble_T,y1,y2]=T_bubble(x1,A1,B1,C1,A2,B2,C2,P,g1,g2)
    end
end
if isnan(P)
    x=linspace(0,1); %x=x1
    p=x.*P1sat.*exp(a1.*(1-x).^2)+(1-x).*P2sat.*exp(a2.*x.^2);
    y=linspace(0,1); %y=y1
    p1=1./((y./P1sat+((1-y)./(P2sat))));
    figure
    plot(y,p1,x,p)
    title('P-x1-y1')
    xlabel('x1/y1')
    ylabel('Pressure ')
    legend('dew-p','bubble-p')
    grid on
end