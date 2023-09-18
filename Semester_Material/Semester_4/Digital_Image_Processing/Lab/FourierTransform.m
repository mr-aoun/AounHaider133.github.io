A = imread("E:\Digital Image Processing\Lab\download3.png");
B = fft2(A);
subplot(1,2,1);
imshow(A); title('Orignal image');

subplot(1,2,2);
imshow(B); title('Spectrum of image');