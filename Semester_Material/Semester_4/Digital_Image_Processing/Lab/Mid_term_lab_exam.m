%Mid term Lab Exam
%Name: Aoun-Haider
%ID:   FA21-BSE-133
%Question#01
%Read two images as image1 and image2. Convert them into gray scale if they
%are color images.
image1 = imread("E:\Digital Image Processing\Lab\img1.jpg");
image2 = imread("E:\Digital Image Processing\Lab\img2.jpg");

[r,c,l] = size(image1);
[r,c,t] = size(image2);
if l == 3
    image1 = rgb2gray(image1);
end
if t == 3
    image2 = rgb2gray(image2);
end

%display images
subplot(1,2,1);
imshow(image1);
subplot(1,2,2);
imshow(image2);
    
%% Produce a watermark image using image1 and image2 with 70:30 content ratio.
% Show image1, image2 & the watermarked image with appropriate titles.
gamma = 0.5;
image2 = imresize(image2,size(image1));

image3 = (1-gamma)*image2 + gamma* image1;
subplot(1,3,1);
imshow(image1); title('Orignal image1');
subplot(1,3,2);
imshow(image2); title('Orignal image2');
subplot(1,3,3);
imshow(image3); title('Watermarked image');
%% Rotate image1 45 degree, and horizontally flip image2 using affine
%transformation. Show the orignal image and processed images with
%approriate titles.

matrix1 = affine2d([cos(45) sin(45) 0; -sin(45) cos(45) 0; 0 0 1]);
imshow(imwarp(image1,matrix1));

%% Perform histogram equalization on image1. Write custom code to compute PDF,
% CDF and to perform histogram equalization. Show orignal and equalized
% image along with their corresponding histograms in a single figure.

x = zeros(256,1);
[row,col] = size(image1);
for i = 1:row
    for j = 1:col
        temp = image1(i,j);
        x(temp+1) = x(temp+1) + 1;
    end
end

PDF = x/(row*col);
CDF(1) = PDF(1);

for i = 2:256
        CDF(i) = CDF(i-1)+PDF(i);
end

L = 256;
s = CDF*L;

for i = 1:row
    for j = 1:col
        temp = image1(i,j);
        Equalized(i,j) = s(temp+1);
    end
end

subplot 221
imshow(uint8(image1)); title('Orignal image');

subplot 222
bar(image1); title('Histogram');

subplot 223
imshow(uint8(Equalized)); title('Equalized image');

subplot 224
bar(Equalized); title('Histogram');