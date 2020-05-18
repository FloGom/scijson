function [ structMetadata ] = makesjdata(name, unit, data, varargin)
%MAKESJDATA create a struct to store the name (str), the unit (str) and 
% the description (str) of a data array ( N by M array). Description is
% optional.
%   STRUCTMETADATA = MAKESJDATA(name, unit, data) create a metadata struct
%   with field description empty ''.
%   STRUCTMETADATA = MAKESJDATA(name, unit, data, description) create a 
%   metadata struct with field description.
%
% See also MAKESJ1D, MAKESJ2D, MAKESJ3D
% 
description = '';
if not(isempty(varargin))
    description = varargin;
end

structMetadata = struct('name', name, 'unit', unit, 'data', data, 'description', description);
end

