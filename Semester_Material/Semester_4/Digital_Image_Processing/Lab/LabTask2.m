%% Image interpolation
%% 1) Read an image 2) Convert to grayscale 3) Reduce size upto 20%(0.2) Bilinear(BL) imresize(Img,0.2,'BL');
%% 4) Reduce the image size upto 10x using NN, BL, BC (Bicubic)

image = imread('E:\Digital Image Processing\Lab\download.jfif');


grayImage = rgb2gray(image);
subplot(2,3,1);
x = grayImage;
imshow(grayImage);
title('Grayscale image');

bilinearImage = imresize(image, 0.2,'bilinear');
subplot(2,3,2);
imshow(bilinearImage);
title('Bilinear image');

bicubicImage = imresize(image, 10,'bicubic');
subplot(2,3,3);
imshow(bicubicImage);
title('Bicubic image');

nearestImage = imresize(image, 10,'nearest');
subplot(2,3,4);
imshow(nearestImage);
title('Nearest image');

subplot(2,3,5);
imshow(gray2ind(x));
title('Index image');

subplot(2,3,6);
imshow(im2bw(image));
title('Binary image');

%% Slice index image from grayscale image

figure;
imshow(grayslice(grayImage,100));
title('Sliced Image:100');
%% Create mirror image
A = imread('E:\Digital Image Processing\Lab\download.jfif');
[row,col] = imsize('E:\Digital Image Processing\Lab\download.jfif');

for i = 0:row
     p = row-1;
    for j = 0:col
        B(i,j) = A(i,j);
        q = q-1;
    end
    p = p+1;
end
%% Affine matrix with FLIP
identity = affine2d([[1 0 0; 0 1 0; 0 0 1]]);
img = imread('E:\Digital Image Processing\Lab\download3.jpeg');


flip_x = affine2d([[-1 0 0; 0 1 0; 0 0 1]]);
flip_y = affine2d([[1 0 0; 0 -1 0; 0 0 1]]);
flip_z = affine2d([[-1 0 0; 0 -1 0; 0 0 1]]);

subplot(2,3,1);
imshow(img),title('Orignal image');

subplot(2,3,2);
imshow(imwarp(img,identity)), title('Identity');
subplot(2,3,3);
imshow(imwarp(img,flip_x)), title('flip_x');
subplot(2,3,4);
imshow(imwarp(img,flip_y)), title('flip_y');
subplot(2,3,5);
imshow(imwarp(img,flip_z)), title('flip_z');
%% Affine matrix Scale
m1 = affine2d([2 0 0; 0 2 0; 0 0 1]);
m2 = affine2d([1 0 0; 0 2 0; 0 0 1]);
m3 = affine2d([2 0 0; 0 1 0; 0 0 1]);

img1 = imread('E:\Digital Image Processing\Lab\download3.jpeg');

subplot(2,2,1);
imshow(img1), title('Orignal image');

subplot(2,2,2);
imshow(imwarp(img1,m1)),title('M1');

subplot(2,2,3);
imshow(imwarp(img1,m2)),title('M2');

subplot(2,2,4);
imshow(imwarp(img1,m3)),title('M3');
%% Rotate image using trignometry
img2 = imread('E:\Digital Image Processing\Lab\download3.jpeg');

r1 = affine2d([cos(45) sin(45) 0; -sin(45) cos(45) 0; 0 0 1]);
subplot(1,2,1);
imshow(img2), title('Orignal image');

subplot(1,2,2);
imshow(imwarp(img2,r1)),title('Rotated image');
%% Shear
s1 = affine2d([1 2 0; 0 1 0; 0 0 1]);
s2 = affine2d([1 0 0; 2 1 0; 0 0 1]);
s3 = affine2d([1 2 0; 2 1 0; 0 0 1]);

img3 = imread('E:\Digital Image Processing\Lab\download3.jpeg');

subplot(2,2,1);
imshow(img3), title('Orignal Image');

subplot(2,2,2);
imshow(imwarp(img3,s1)), title('S1');

subplot(2,2,3);
imshow(imwarp(img3,s2)), title('S2');

subplot(2,2,4);
imshow(imwarp(img3,s3)), title('S3');
%% Translate
imshow(imtranslate(imread('E:\Digital Image Processing\Lab\download3.jpeg'),[50,50]));
title('Image translated 50x50');

%% To clear the terminal & console
clc;
clear all;