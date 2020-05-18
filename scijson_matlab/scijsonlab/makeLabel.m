function [ myLabel] = makeLabel( sjdata )
%MAKELABEL Summary of this function goes here
%   Detailed explanation goes here

myLabel = sjdata.name;
if not(isempty(sjdata.unit))
    myLabel = [myLabel ' [' sjdata.unit ']'];
end

end

