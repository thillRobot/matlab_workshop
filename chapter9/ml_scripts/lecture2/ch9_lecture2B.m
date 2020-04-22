
clear variables;close all;clc

FID = fopen('output_sine_data.csv','w');

t=0:0.1:2*pi
y=5*sin(3*t)

figure(1)
plot(t,y) ; pause

j=1
while j<10
    fprintf(FID,'%f,',y(j));
    j=j+1;
end
      
fclose(FID);