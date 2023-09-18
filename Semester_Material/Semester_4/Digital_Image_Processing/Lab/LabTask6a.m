%Lab#06
%Task#01
%Apply averaging filter on a sample image
image1 = imread("E:\Digital Image Processing\Lab\High_contrast_image.jpg");
image1 = rgb2gray(image1);
Noisy_image = imnoise(image1,'salt & pepper',0.02);
filter = ones(3,3)*1/9;
image2= imfilter(Noisy_image,filter);
subplot 131
imshow(image1); title('Orignal image');

subplot 132
imshow(Noisy_image); title('Nosiy image');
subplot 133
imshow(image2); title('Refined image');

%% Median filtering
K = medfilt2(Noisy_image);
imshow(K); title('Median filter');

%% Laplacian filtering
image1 = imread("E:\Digital Image Processing\Lab\img1.jpg");
filter1 = [-1 0 -1; 0 4 0; -1 0 -1];
filter2 = [-1 0 -1; -1 8 -1; -1 -1 -1];
image2 = imfilter(image1,filter1);
image3 = filter2(filter1,image1);

subplot 131
imshow(image1); title('Orignal image');

subplot 132
imshow(image2); title('Diagonal filter');

subplot 133
imshow(image3); title('8-Neighbour filter');
%% Sobel, Prewit filtering

%Sobel filters along x and y axis
sobel_x = [-1 0 1; -2 0 2; -1 0 1];
sobel_y = [-1 2 1; 0 0 0; -1 2 1];

%Prewit filters along x and y axis
prewit_x = [-1 0 1; -1 0 1; -1 0 1];
prewit_y = [-1 -1 -1; 0 0 0; 1 1 1];

%Apply Sobel operator
Ix_sobel = imfilter(image1,sobel_x);
Iy_sobel = imfilter(image1,sobel_y);

%Apply Prewit operator
Ix_prewit = imfilter(image1,prewit_x);
Iy_prewit = imfilter(image1,prewit_y);

subplot 151
imshow(image1); title('Orignal image');

subplot 152
imshow(Ix_sobel); title('Sobel_x');

subplot 153
imshow(Iy_sobel); title('Sobel_y');

subplot 154
imshow(Ix_prewit); title('Prewit_x');

subplot 155
imshow(Iy_prewit); title('Prewit_y');
%% Weighted average filtering

image1 = imread("E:\Digital Image Processing\Lab\High_contrast_image.jpg");
image1 = rgb2gray(image1);

w = [1 2 1; 2 4 2; 1 2 1];
filter = w/sum(w(:));

weighted_average = imfilter(image1,filter);

subplot 121
imshow(image1); title('Orignal image');

subplot 122
imshow(weighted_average); title('Weighted average filtered image');
