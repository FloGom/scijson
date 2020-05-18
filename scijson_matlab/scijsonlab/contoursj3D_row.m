function [ ] = contoursj3D_row( sj3D )
%contoursj3D_row Plot automatically a 2D array load from a 3D scijson 
%(X, Y, Z) and project data along row.
%   contoursj3D_row(sj3D) plot automatically a 2D array as a X,Z scatter 
%   plot with multiple lines (Y). There is no interpolation, just data.
%   
%   See also makesj3D

% number of columns in data => number of lines in plot
nbLines = length(sj3D.col.data);

% auto-log
logX = needlogscale(sj3D.row.data);
logY = needlogscale(sj3D.array.data);

% plot part
hold all;

mylegend = cell(1,nbLines);
for i=1:nbLines
    plot(sj3D.row.data, sj3D.array.data(:,i), '*');
    mylegend(i) = {[sj3D.col.name  '=' num2str(sj3D.col.data(i)) ' ' sj3D.col.unit]};
end

legend(mylegend);
xlabel(makeLabel(sj3D.row));
ylabel(makeLabel(sj3D.array));

% set log scale if necessary
if logX
    set(gca, 'XScale', 'log');
end

if logY
    set(gca, 'YScale', 'log');
end

% set grid
grid on;
%set(gca, 'GridColor', '#505050'); % only for Matlab 2014b and later

end

    


