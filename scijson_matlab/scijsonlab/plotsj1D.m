function [ myAx ] = plotsj1D( sj1D )
%plotsj1D Plot a bar graph of the data stored in a 1D sj collection.
%   myAx = plotsj1D( sj1D ), plot a bar graph of the data stored in the 1D
%   sj collection and return an axe handle.
%
% See also makesj1D

bar(sj1D.array.data);

% prepare ylabel
ystr = makeLabel(sj1D.array);
ylabel(ystr);

myAx = gca;

end

