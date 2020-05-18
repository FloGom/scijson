function [myAx] = contoursj3D( sj3D )
%contoursj3D Plot automatically contour of a 2D array loaded from a 3D 
%scijson (X, Y, Z) and project data along row.s
%   contoursj3D(sj3D) plot automatically the contour of a matrix Z along X,
%   and Y as contour.
%   
%   See also makesj3D


% auto-log
logX = needlogscale(sj3D.row.data);
logY = needlogscale(sj3D.col.data);

% plot part
hold all;

% /!\ x as row, y as col convention /!\ see grid representation help form
% more information
contour(sj3D.row.data, sj3D.col.data, sj3D.array.data');

xlabel(makeLabel(sj3D.row));
ylabel(makeLabel(sj3D.col));

% set log scale if necessary
if logX
    set(gca, 'XScale', 'log');
end

if logY
    set(gca, 'YScale', 'log');
end

% set grid
grid on;

myAx = gca;

end