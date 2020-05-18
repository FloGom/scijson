function [ ] = contoursj3D_col( sj3D )
%contoursj3D_row Plot automatically a 2D array load from a 3D scijson and
%project data along row.
%   contoursj3D_row(sj3D) plot automatically a 2D array as a Y,Z scatter 
%   plot with multiple lines (X). There is no interpolation just data.
%   
%   See also makesj3D

% number of columns in data => number of lines in plot
nbLines = length(sj3D.col.data(1,:));

% auto-log
logX = needlogscale(sj3D.col.data);
logY = needlogscale(sj3D.array.data);

% plot part
hold all;

mylegend = cell(1,nbLines);
for i=1:nbLines
    plot(sj3D.col.data, sj3D.array.data(i,:), '*');
    mylegend(i) = {[sj3D.row.name  '=' num2str(sj3D.row.data(i)) ' ' sj3D.row.unit]};
end

legend(mylegend);
xlabel(makeLabel(sj3D.col));
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

end

    


