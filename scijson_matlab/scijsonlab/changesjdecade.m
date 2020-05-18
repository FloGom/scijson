function [ sjdataout ] = changeSjDecade(sjdata, startbase, endbase, unit)
%CHANGESJDECADE Convert the sjdata data field from the power 10^startbase
%to the power 10^êndbase. The unit of the result of the conversion is 
%change manually with the input unit.

sjdataout = sjdata;

sjdataout.data = sjdata.data*10^(startbase)/10^(endbase);
sjdataout.unit = unit;

end

