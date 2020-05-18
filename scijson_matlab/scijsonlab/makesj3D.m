function [ metadataStruct ] = makesj3D(rowMetadata, colMetadata, arrayMetadata)
%MAKESJ2D : Create a metadata struct for 2D array with metadata
%structs for row, col, and array itself.
%   METADATASTRUCT = MAKESJ3D(rowMetadata, colMetadata,
%   arrayMetadata) create a struct with the 3 metadata structs
%
%   See also MAKESJDATA

metadataStruct = struct('row', rowMetadata, 'col', colMetadata, 'array', arrayMetadata);

end

