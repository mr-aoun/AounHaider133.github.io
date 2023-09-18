%% To clear the terminal & workspace
clc;
clear all;
%% Intensity transformation
A = imread("E:\Digital Image Processing\Lab\boy.jpg");
G = rgb2gray(A);

c1 = 0.6;
[M,N] = size(G);
c2 = 100;

double_image = im2double(A);

c3 = 1;
gamma = 0.5;
L1 = 2^8;
for x = 1:M
    for y = 1:N
        
        m1 = double(G(x,y));
        
        %Power law transformation
        PL(x,y) = c3*power(double_image(x,y),gamma);
        
        %Negative transformation
        m2 = G(x,y);
        Negation(x,y) = L1-1-m2;
        
    end
end

%Log transformation
L = uint8(log(double(G)+1).*((L1-1)/log(L1)));

%Anti-log transformation
AL = uint8((exp(double(G)).^(log(L1)/(L1-1))));

subplot(2,3,1);
imshow(A); title('Orignal Image');

subplot(2,3,2);
imshow(L); title('Log transformed image');

subplot(2,3,3);
imshow(AL); title('Anti-Log transformed image');

subplot(2,3,4);
imshow(PL); title('Power Law transformed');

subplot(2,3,5);
imshow(Negation); title('Negative transformed');