function [T1sat,T2sat,A1,A2,B1,B2,C1,C2]=sat_T(first_component, second_component,P)
antonie_coefficient=xlsread("parameters-for-antonie-equation.xlsx");
if first_component == "aceton"
    a=antonie_coefficient(1,:);
    A1=a(1);
    B1=a(2);
    C1=a(3);
    T1sat=(B1/(A1-log(P))-C1)
elseif first_component== "benzene" 
    a=antonie_coefficient(2,:);
    A1=a(1);
    B1=a(2);
    C1=a(3);
   T1sat=(B1/(A1-log(P))-C1)
elseif first_component=="ethanol" 
    a=antonie_coefficient(3,:);
    A1=a(1);
    B1=a(2);
    C1=a(3);
    T1sat=(B1/(A1-log(P))-C1)
elseif first_component=="n-heptane" 
    a=antonie_coefficient(4,:);
    A1=a(1);
    B1=a(2);
    C1=a(3);
    T1sat=(B1/(A1-log(P))-C1)
elseif first_component=="methanol"
    a=antonie_coefficient(5,:);
    A1=a(1);
    B1=a(2);
    C1=a(3);
    T1sat=(B1/(A1-log(P))-C1)
elseif first_component=="n-pentane" 
    a=antonie_coefficient(6,:);
    A1=a(1);
    B1=a(2);
    C1=a(3);
    T1sat=(B1/(A1-log(P))-C1)
elseif first_component=="1-propanol"
    a=antonie_coefficient(7,:);
    A1=a(1);
    B1=a(2);
    C1=a(3);
    T1sat=(B1/(A1-log(P))-C1)
elseif first_component=="toluene"
    a=antonie_coefficient(8,:);
    A1=a(1);
    B1=a(2);
    C1=a(3);
    T1sat=(B1/(A1-log(P))-C1)
elseif first_component=="water" 
    a=antonie_coefficient(9,:);
    A1=a(1);
    B1=a(2);
    C1=a(3);
    T1sat=(B1/(A1-log(P))-C1)
end
if second_component=="aceton"
    a=antonie_coefficient(1,:);
    A2=a(1);
    B2=a(2);
    C2=a(3);
    T2sat=(B2/(A2-log(P))-C2)
elseif second_component=="benzene" 
    a=antonie_coefficient(2,:);
    A2=a(1);
    B2=a(2);
    C2=a(3);
    T2sat=(B2/(A2-log(P))-C2)
elseif second_component=="ethanol" 
    a=antonie_coefficient(3,:);
    A2=a(1);
    B2=a(2);
    C2=a(3);
    T2sat=(B2/(A2-log(P))-C2)
elseif second_component=="n-heptane" 
    a=antonie_coefficient(4,:);
    A2=a(1);
    B2=a(2);
    C2=a(3);
    T2sat=(B2/(A2-log(P))-C2)
elseif second_component=="methanol"
    a=antonie_coefficient(5,:);
    A2=a(1);
    B2=a(2);
    C2=a(3);
    T2sat=(B2/(A2-log(P))-C2)
elseif second_component=="n-pentane" 
    a=antonie_coefficient(6,:);
    A2=a(1);
    B2=a(2);
    C2=a(3);
    T2sat=(B2/(A2-log(P))-C2)
elseif second_component=="1-propanol"
    a=antonie_coefficient(7,:);
    A2=a(1);
    B2=a(2);
    C2=a(3);
    T2sat=(B2/(A2-log(P))-C2)
elseif second_component=="toluene" 
    a=antonie_coefficient(8,:);
    A2=a(1);
    B2=a(2);
    C2=a(3);
    T2sat=(B2/(A2-log(P))-C2)
elseif second_component=="water" 
    a=antonie_coefficient(9,:);
    A2=a(1);
    B2=a(2);
    C2=a(3);
    T2sat=(B2/(A2-log(P))-C2) 
end
end