%% To clear the console & terminall
clc;
clear all;
%% Plotting histogram of image
A = imread("E:\Digital Image Processing\Lab\download3.png");

A = rgb2gray(A);
subplot(1,3,1);
imshow(A); title('Orignal image');

[m,n] = size(A);
intensities = zeros(1,256);

for i = 1:m
    for j = 1:n
        intensities(A(i,j)+1)=intensities(A(i,j)+1)+1;
    end 
end

subplot(1,3,2);
plot(intensities); title('Histogram');
xlabel('Intensity');
ylabel('frequency');

subplot(1,3,3);
imhist(A); title('Histogram built-in');
xlabel('Intensity');
ylabel('frequency');
