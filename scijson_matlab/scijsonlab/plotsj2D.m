function [ myAx ] = plotsj2D( sj2D )
%PLOTSJ2D Plot automatically 2D data from a 2D sci json 
%   PLOTSJ2D(sj2D) plot automatically 2D data from a 2D sci json, as a
%   X, Y, scatter plot. Grid is on by defaul. Logscale is set when data
%   spans over 2 decades or more.
%   
%   See also makesj2D


% auto-log
logX = needlogscale(sj2D.row.data);
logY = needlogscale(sj2D.array.data);

% plot part
hold all;

xlabel(makeLabel(sj2D.row));
ylabel(makeLabel(sj2D.array));

plot(sj2D.row.data, sj2D.array.data);

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

myAx = gca;
end

    


