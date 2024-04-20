function [raw_data] = getRawData(path)
raw_data = readmatrix(path, 'Range', 'A1');
%raw_data = cell2mat(raw_data)

