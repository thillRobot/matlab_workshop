%% ENGR1120 - 800 - Tennessee Technological University
%  % Tristan Hill - April 08, 2020

% Lab 9 - File input using fscanf() with .txt files 
% % % %%
clear variables;close all; clc

% use FOPEN to generate a file identifier used to access the file
fid=fopen('lab9_degrees.csv','r');

% use a NESTED WHILE and FSCANF to scan the data into a 2D matrix
i=1;
while ~feof(fid)
    

        
    % scan each value from FID one by one as a float
    data(i)=fscanf(fid,'%f,',1);  

    i=i+1;
    
    
end
data

% close the file afterwards - IMPORTANT!
fclose(fid);
