%% Open matlab file
   fid = fopen('E:\Matrix.m','r');
   count = 0;
    while ~feof(fid)
        line = fgetl(fid);
        if isempty(line) || strncmp(line,'%',1) || ~ischar(line)
            continue;
        end
        count = count+1;
        disp(line);
    end
    count;
    %% To clear the terminal & workspace
    
    clc;
    clear all;
