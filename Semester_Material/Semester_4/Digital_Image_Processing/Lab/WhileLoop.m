%% While loop example

limit = 0.8;
s = 0;

while 1
    temp = rand;
    if temp > limit
        break
    end
    s = s+temp;
    disp(s);
end
