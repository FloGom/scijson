function [] = savesj(filepath, sjcoll)
%SAVESJ Save a scientific json collection (sj1D, sj2D, sj3D) in a json
%file.
%   SAVEJS(FILEPATH, SJCOLL), with filepath the path to the .json file, and
%   sjcoll the name of the struct made with makesj#D.
%
% See also makesj1D, makesj2D, makesj3D

savejson('', sjcoll, filepath);

end

