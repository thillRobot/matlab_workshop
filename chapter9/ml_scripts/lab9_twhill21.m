%% ENGR1120 - 800 - Tennessee Technological University
% Tristan Hill - April 08, 2020
%  
% Lab 9 - File input using fscanf() with .txt files 
%%
clear variables;close all; clc

% use FOPEN to generate a file identifier used to access the file
fid=fopen('lab9_degrees.csv','r');

% use a NESTED WHILE and FSCANF to scan the data into a 2D matrix
i=1;
while ~feof(fid)
    
    j=1;
    while j<=3
        
        % scan each value from FID one by one as a float
        degrees(i,j)=fscanf(fid,'%f,',1);  
        
        j=j+1;
    end
    
    i=i+1;
    
end
degrees

% close the file afterwards - IMPORTANT!
fclose(fid);

figure(1)
% subplot(2,1,1)
bar(degrees(:,1))
title('Bar Graph - Degrees Granted, 2014-1015')
xlabel('Category of Major')
ylabel('Number of Degrees Granted')
grid on

figure(2)
% subplot(2,1,2)
histogram(degrees(:,1),'BinWidth',50000)
title('Histogram - Degrees Granted, 2014-1015')
xlabel('Range of Degrees Granted')
ylabel('Number of Majors in Range')
grid on