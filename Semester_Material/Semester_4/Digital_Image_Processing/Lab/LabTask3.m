%% To clear the terminal & workspace
clc;
clear all;
%% Arithmetic operations
Img1 = imread("E:\Digital Image Processing\Lab\boy.jpg");
Img2 = imread("E:\Digital Image Processing\Lab\four-square.jpg");
Img1 = rgb2gray(Img1);
%Img2 = rgb2gray(Img2);
%Checking and handling both image sizes
if(size(Img1,1)==size(Img2,1) && size(Img1,2)==size(Img2,2))
    disp('Both images have equal size!!');
else
    Img2 = imresize(Img2, [size(Img1,1),size(Img1,2)]);
end

%Displaying orignal images
subplot(3,2,1);
imshow(Img1); title('Image#01');
subplot(3,2,2);
imshow(Img2); title('Image#02');

%Addition (img1+img2)
subplot(3,2,3);
imshow(Img1+Img2); title('Addition');

subplot(3,2,4);
imshow(Img1-Img2); title('Subtraction');

%Image multiplication (elementwise)
for i=1:size(Img1,1)
    for j=1:size(Img1,2)
        product(i,j) = Img1(i,j).*Img2(i,j);
    end
end
subplot(3,2,5);
imshow(product); title('Multiplication');

%Image division
for i=1:size(Img1,1)
    for j=1:size(Img1,2)
        remainder(i,j) = Img1(i,j)./Img2(i,j);
    end
end

subplot(3,2,6);
imshow(double(remainder)); title('Division');
%display the pixel information
impixelinfo;
%% Logical Operations
A = imread("E:\Digital Image Processing\Lab\boy.jpg");
B = imread("E:\Digital Image Processing\Lab\four-square.jpg");

A = rgb2gray(A);
%B = rgb2gray(B);
%Checking and handling both image sizes
if(size(A,1)==size(B,1) && size(A,2)==size(B,2))
    disp('Both images have equal size!!');
else
    B = imresize(B, [size(A,1),size(A,2)]);
end

%Displaying orignal images
subplot(4,2,1);
imshow(A); title('A');
subplot(4,2,2);
imshow(B); title('B');

subplot(4,2,3);
imshow(bitcmp(A)); title('Not(A)');

subplot(4,2,4);
imshow(bitand(A,B)); title('A AND B');

subplot(4,2,5);
imshow(bitor(A,B)); title('A OR B');

subplot(4,2,6);
imshow(bitxor(A,B)); title('A XOR B');

subplot(4,2,7);
imshow(bitcmp(bitand(A,B))); title('A NAND B');

subplot(4,2,8);
imshow(bitcmp(bitor(A,B))); title('A NOR B');
%% Brightness of image
factor = input('Enter the factor of brightness:');

if(factor>255)
    disp('Too large! brightness must be <255');
else
    A = imread("E:\Digital Image Processing\Lab\boy.jpg");
    subplot(1,2,1);
    imshow(A); title('Orignal image');
    subplot(1,2,2);
    imshow(A+factor); title('Bright image');
end
%% Watermark image
% Read the image and the watermark
image = imread("E:\Digital Image Processing\Lab\boy.jpg");
watermark_gray = imread("E:\Digital Image Processing\Lab\cui_logo.jpg");

% Convert the images to grayscale
image_gray = rgb2gray(image);
%watermark_gray = rgb2gray(watermark);

% Resize the watermark to the same size as the image
watermark_resized = imresize(watermark_gray, size(image_gray));

% Define the alpha blending factor
alpha = 0.2;
%--------
%Formula:
%--------
%output = weight*WaterMarkImage + (1-weight)*OrignalImage;

% Add the watermark to the image using alpha blending
watermarked_image = (1 - alpha) * double(image_gray) + alpha * double(watermark_resized);

% Convert the watermarked image back to uint8 format
watermarked_image = uint8(watermarked_image);

% Display the watermarked image
imshow(watermarked_image);

% Save the watermarked image
%imwrite(watermarked_image, "E:\Digital Image Processing\Lab\comsats_log.jpg");
%% Watermark image
orignal = imread("E:\Digital Image Processing\Lab\boy.jpg");
watermark = imread("E:\Digital Image Processing\Lab\cui_logo.jpg");

orignal = rgb2gray(orignal);
watermark = rgb2gray(watermark);
watermark_resized = imresize(watermark,size(orignal));

weight = 0.3;

watermarkedImage = weight*double(watermark_resized) + (1-weight)*double(orignal);
watermarkedImage = uint8(watermarkedImage);
imshow(watermarkedImage);
