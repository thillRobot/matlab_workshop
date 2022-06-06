%% ENGR1120 - 030/031 - Tennessee Technological University
% Tristan Hill - March 17, 2016
%  
% Lab 8 - File input using fscanf() with .txt files 
%%
clear variables; clc


fid=fopen('lab8_input_mod.txt');

s=1;
while(~feof(fid))
   
   flag=1;w=1;
   while flag 
        char_in=fscanf(fid,'%c',1);
        if (int8(char_in)<48)||(int8(char_in)>57)
            name_in(w)=char_in;
            w=w+1;
        else
            flag=0;
        end
   end
   names{s}=name_in; % school names
   
   pop_in(1)=char_in;
   flag=1;w=2;
   while flag 
        char_in=fscanf(fid,'%c',1);
        if ((int8(char_in)>=48)&&(int8(char_in)<58))||(int8(char_in)==44)
            pop_in(w)=char_in;
            w=w+1;
        else
            flag=0;
        end
   end
   pops{s}=pop_in; % school enrollments
   
   flag=1;w=1;
   while flag 
        char_in=fscanf(fid,'%c',1)
        if ((int8(char_in)>=48)&&(int8(char_in)<58))||((int8(char_in)==36)||(int8(char_in)==44)||(int8(char_in)==46))
            itut_in(w)=char_in;
            w=w+1;
        else
            flag=0;
        end
   end
   ituts{s}=itut_in; % in state tuitions
   
   flag=1;w=1;
   while flag 
        [char_in,cnt]=fscanf(fid,'%c',1)
        if cnt>0
            if (((int8(char_in)>=48)&&(int8(char_in)<58))||((int8(char_in)==36)||(int8(char_in)==44)||(int8(char_in)==46)))
                otut_in(w)=char_in;
                w=w+1;
            else
                flag=0;
            end
        else
            flag=0;
        end
   end
   otuts{s}=otut_in; % out state tuitions
      
   s=s+1;
end
   
fclose(fid)


n=length(otuts);
for i=1:n

    k=1;
    str=otuts{i};
    for j=1:length(str)    
        if (int8(str(j))>47)&&(int8(str(j))<58)
            num(k)=str(j);
            k=k+1;
        end
    end
    out_state(i)=str2num(num(1:length(num)-2));
   
end

for i=1:n

    k=1;
    str=ituts{i};
    for j=1:length(str)    
        if (int8(str(j))>47)&&(int8(str(j))<58)
            num(k)=str(j);
            k=k+1;
        end
    end
    in_state(i)=str2num(num(1:length(num)-2));
   
end

for i=1:n

    k=1;
    str=pops{i};
    for j=1:length(str)    
        if (int8(str(j))>47)&&(int8(str(j))<58)
            num(k)=str(j);
            k=k+1;
        end
    end
    enroll(i)=str2num(num(1:length(num)-2));
   
end



%% now generate a data file for lab 8 


fid=fopen('lab8_input.txt','w');

for i=1:n

    fprintf(fid,'%i %.2f %.2f',enroll(i),in_state(i),out_state(i))
    
    if i<n
        fprintf(fid,'\n')
    end
    
end

fclose(fid)


fid=fopen('lecture_3_17_2016.txt','w');

for i=1:n

    fprintf(fid,'%i',enroll(i))
    
    if i<n
        fprintf(fid,'\n')
    end
    
end

fclose(fid)








