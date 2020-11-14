
% % is used for comment  
clear all  %clear all removes all variables from the current workspace, releasing them from system memory
close all  %close all closes all figures whose handles are visible
clc        %clc clears all the text from the Command Window, resulting in a clear screen

%input range
x = 1:0.1:5;
y = x;

%meshgrid(x,y) returns 2-D grid coordinates based on the coordinates contained in vectors x and y
[X,Y]= meshgrid(x,y);

%vectors v_x and v_y
v_x = -Y./(X.^2 + Y.^2);
v_y = X./(X.^2 + Y.^2);

figure(1)

%quiver(X,Y,v_x,v_y) plots arrows with directional components U and V at the Cartesian coordinates specified by X and Y
quiver(X,Y,v_x,v_y)

figure(2)

%plot(v_x,v_y) creates a 2-D line plot of the data in v_y versus the corresponding values in v_x.
plot(v_x, v_y)