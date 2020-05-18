function [ metadataStruct ] = makesj1D(arrayMetadata)
%MAKESJ2D : Create a metadata struct for 2D array with metadata
%structs for the array .
%   METADATASTRUCT = MAKESJ1D(rowMetadata, colMetadata,
%   arrayMetadata) create a struct with the 3 metadata structs
%
%   See also MAKESJDATA

metadataStruct = struct('array', arrayMetadata);

end
