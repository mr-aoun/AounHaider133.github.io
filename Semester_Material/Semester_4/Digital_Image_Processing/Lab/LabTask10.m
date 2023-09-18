% LAB#10 (Morphological image processing)
%% 1) Perform erosion & dilation
binaryImage = imread("E:\Courses\Digital Image Processing\Lab\Rectangle.jpg");
%grayImage = rgb2gray(colorImage);
%thresholdValue = 0.5;
%binaryImage = imbinarize(colorImage,thresholdValue);

%Creating structuring element and dilating image
% SE = [ 0 1 0; 1 1 1; 0 1 0;];
SE1 = ones(100,100);

for i=1:30
    SE1(i,1:49) = 0;
    SE1(i,60:100) = 0;
end

for i=80:100
    SE1(i,1:49) = 0;
    SE1(i,60:100) = 0;
end

dilatedImage1 = imdilate(binaryImage,SE1);

subplot 241
imshow(binaryImage); title('Orignal Image');
subplot 242
imshow(dilatedImage1); title('DI');

SE2 = strel('disk',50);
dilatedImage2 = imdilate(binaryImage,SE2);
subplot 243
imshow(dilatedImage2); title('DI(disk)');

SE3 = strel('rectangle',[100,100]);
dilatedImage3 = imdilate(binaryImage,SE3);

subplot 244
imshow(dilatedImage3); title('DI(rectangle)');

%Erosion
binaryImage2 = imread("E:\Courses\Digital Image Processing\Lab\Circle.jpg");



subplot 245
imshow(binaryImage2); title('Orignal Image');

erodedImage1 = imerode(binaryImage2,SE1);

subplot 246
imshow(erodedImage1); title('EI');

erodedImage2 = imerode(binaryImage2,SE2);

subplot 247
imshow(erodedImage2); title('EI(disk)');

subplot 248
imshow(imerode(binaryImage2,SE3)); title('EI(rectangle)');

%% Removing salt & pepper noise using erosion

noisyImage = imnoise(binaryImage,'salt & pepper',0.3);

subplot 131
imshow(noisyImage); title('Noisy Image');

S1 = ones(3,3);
enhancedImage1 = imerode(noisyImage,S1);
enhancedImage2 = imdilate(noisyImage,S1);

subplot 132
imshow(enhancedImage1); title('Erosion');

subplot 133
imshow(enhancedImage2); title('Dilation');
%% Perform Opening and closing operation
%% Opening = 1) Erosion 2) Dilation
%% Closing = 1) Dilation 1) Erosion
binaryImage3 = imbinarize(rgb2gray(imread("E:\Courses\Digital Image Processing\Lab\Bridge.jpg")));


subplot 131
imshow(binaryImage3); title('Orignal Image');

subplot 132
imshow(imdilate(imerode(binaryImage3,SE1),SE1)); title('Opening');
%bwmorph(Image,'open | close');

subplot 133
imshow(imerode(imdilate(binaryImage3,SE1),SE1)); title('Closing');
