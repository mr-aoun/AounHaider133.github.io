%% To clear the terminal & workspace
clc;
clear all;
%% Adding two images
A = imread('E:\Digital Image Processing\Lab\download.jfif');
B = imread('E:\Digital Image Processing\Lab\download2.jpeg');
S = size(A);
B = imresize(B,[S(1),S(2)]);

%Displaying 1st image
subplot(221);
imshow(A);
title('First image');

%Displaying 2nd image
subplot(222);
imshow(B);
title('Second image');

% output = zeros(S(1),S(2),3);
% output = uint8(output);
% output = A+B;

subplot(223);
imshow(A+B);
title('Added image');

subplot(224);
imshow(A-B);
title('Difference image');
