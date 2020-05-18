function [ metadataStruct ] = makesj2D(rowMetadata, arrayMetadata)
%MAKESJ2D : Create a metadata struct for 1D array with metadata
%structs for row and array itself.
%   METADATASTRUCT = MAKESJ2D(rowMetadata, colMetadata,
%   arrayMetadata) create a struct with the 2 metadata structs
%
%   See also MAKESJDATA

metadataStruct = struct('row', rowMetadata, 'array', arrayMetadata);

end

