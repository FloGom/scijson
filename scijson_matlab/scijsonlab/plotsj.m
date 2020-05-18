function [myAx] = plotsj(sjColl)
%plotsj Choose a graph and plot automatically the data from a sj collection
%(sj1D, sj2D, or sj3D).
%   myAx = plotsj(sjColl) returns the axe handle myAx.
%   
% See also plotsj1D, plotsj2D, plotsj3D, makesj1D, makesj2D, makesj3D

names = fieldnames(sjColl);

nbFields = length(names);
if nbFields==1
    myAx=plotsj1D(sjColl);
elseif nbFields == 2
    myAx=plotsj2D(sjColl);
elseif nbFields ==3
    myAx=plotsj3D(sjColl);
end
end

