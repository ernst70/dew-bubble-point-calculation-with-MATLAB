function [g1,g2]=margules(x1,x2,a1,a2)
%a=margules_coefficent_for_component
%g1=gama for first component
%g2=gama for second component
g1=exp(a1*x2^2);
g2=exp(a2*x1^2);
end
