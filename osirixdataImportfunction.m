function [ osirixData ] = osirixdataImportfunction(filename)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
%% Import the data
[~, ~, raw] = xlsread(filename,'Sheet1');
raw = raw(2:end,end);
%% Create output variable
osirixData = reshape([raw{:}],size(raw));
%% Clear temporary variables
clearvars raw;

end
