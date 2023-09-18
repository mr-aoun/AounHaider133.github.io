%Program to implement contrast stretching
A = imread("E:\Digital Image Processing\Lab\High_contrast_image.jpg");

%Display orignal image
A = rgb2gray(A);
%[row,col] = size(A);
kernel = ones(3,3)/9;
%kernel = [1/9 1/9 1/9],[1/9 1/9 1/9],[1/9 1/9 1/9];
B = imfilter(A,kernel);
C = A - B;
imshow(C);
subplot(1,3,1);
imshow(A); title('Orignal image');
subplot(1,3,2);
imshow(B); title('Smoothy image');
subplot(1,3,3);
imshow(C); title('Subtracted image');
