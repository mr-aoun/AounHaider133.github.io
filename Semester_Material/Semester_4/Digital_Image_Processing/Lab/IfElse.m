%% For loop example
z = [1 2 3 4 5 6 7 8];
for n = 2:6
    if n == 5
        continue;
    else
     z(n) = 2* z(n-1);
    end
end
%% Matrix operation using for loop and if else

row = 4;
col = 6;
A = ones(row,col);

for i = 1:row
    for j = 1:col
        if i == j
            A(i,j) = 2;
        elseif abs(i-j) == 1
            A(i,j) = -1;
        else
            A(i,j) = 0;
        end
    end
end
   disp(A);         
   
%% %% To clear the terminal & workspace
clc;
clear all;