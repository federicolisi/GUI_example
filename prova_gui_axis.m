function [a,b] = prova_gui_axis( i,j )
%PROVA_GUI_AXIS Summary of this function goes here
%   Detailed explanation goes here

r=i*j-4;
e=(r/8)+sqrt(r);
a=e;
b=r;

assignin('base','r1',a)
assignin('base','r2',b)

end

