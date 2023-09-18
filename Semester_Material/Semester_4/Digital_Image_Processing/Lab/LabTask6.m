%% To clear the terminal & workspace
clc;
clear all;
%% Histogram & histogram equalization using built-in function

A = imread("E:\Digital Image Processing\Lab\boy.jpg");
A = rgb2gray(A);
subplot(2,2,1);
imshow(A); title('Orignal Image');


subplot(2,2,2);
imshow(histeq(A)); title('Histogram Equalized Image');


subplot(2,2,3);
imhist(A); title('Bar graph');

subplot(2,2,4);
bar(histeq(A)); title('Histogram Image');
%% Histogram & histogram equalization without built-in function

A = imread("E:\Digital Image Processing\Lab\boy.jpg");

if size(A,3) == 3
    img_1 = rgb2gray(A);
else
    img_1 = A;
end
[row,col] = size(img_1);
r = zeros(256,1);

for i = 1:row
    for j = 1:col
        temp = img_1(i,j);
        r(temp+1) = r(temp+1)+1;
    end
end
p = r/(row*col);

%Record cumulative sum
c(1) = p(1);

for k = 2:256
    c(k) = c(k-1)+p(k);
end
%%c = round(c*L);
L = 256;
s = c*L;

for i = 1:row
    for j = 1:col
        temp = img_1(i,j);  
        r(temp+1) = s(temp+1)+1;
        temp = img_1(i,j);
        Eq_img(i,j) = s(temp+1);
    end
end

subplot 231
imshow(img_1)
title('Original Image')

subplot 232
imshow(histeq(img_1));
title('Eql Image histeq');

subplot 233
imshow(uint8(Eq_img));
title('Eql Image Custom');

subplot 234
bar(imhist(img_1));
title('Original Image Histogram');

subplot 235
bar(imhist(temp));
title('Histeq Histogram');

subplot 236
bar(s)
title('Custom Image Histogram')
%% Local level histogram equalization
A = imread("E:\Digital Image Processing\Lab\boy.jpg");
if size(A,3) == 3
    img_1 = rgb2gray(A);
else
    img_1 = A;
end

subplot(2,3,1);
imshow(A); title("Orignal Image");

subplot(2,3,2);
bar(imhist(A)); title("Orignal Image global histogram");

subplot(2,3,3);
imshow(histeq(A)); title("Orignal Image equalized histogram");

[row,col] = size(img_1);

%Applying 3x3 local histogram k1 < k2
for i = 1:3:row-2
    for j = 1:3:col-2
        temp = img_1(i:i+2,j:j+2);
        img_1(i:i+2,j:j+2) = histeq(temp);
    end
end

local = img_1;

subplot(2,3,4);
imshow(local); title("Local equalized image");

subplot(2,3,5);
bar(imhist(local)); title("Local image histogram");

subplot(2,3,6);
bar(histeq(local)); title("Local equalized image");
%% Histogram matching
img = imread("E:\Digital Image Processing\Lab\boy.jpg");
ref = imread("E:\Digital Image Processing\Lab\download.jfif");

img = rgb2gray(img);
ref = rgb2gray(ref);

A = imhist(imread("E:\Digital Image Processing\Lab\boy.jpg"));
B = imhist(imread("E:\Digital Image Processing\Lab\boy.jpg"));

%probability density function calculation by intensity/dimenshion
cdf_A = cumsum(A)/numel(img);
cdf_B = cumsum(B)/numel(ref);

M = uint8(zeros(1,256));

for k = 1:256
    [temp,diff] = min(abs(cdf_A(k) - cdf_B));
    M(k) = diff-1;
end

Match = M(double(img+1));

subplot(2,3,1);
imshow(img); title("Orignal Image");

subplot(2,3,2);
bar(imhist(img)); title("Org Hist");

subplot(2,3,3);
imshow(ref); title("Reference Image");

subplot(2,3,4);
bar(imhist(ref)); title("Ref Hist");

subplot(2,3,5);
imshow(Match); title("Matched Image");

subplot(2,3,6);
bar(imhist(Match)); title("Match Hist");
