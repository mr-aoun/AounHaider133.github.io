%Program to implement contrast stretching
A = imread("E:\Digital Image Processing\Lab\Low_Contrast_image2.png");

%Display orignal image
subplot(1,2,1);
imshow(A); title('Orignal image');
subplot(1,2,2);

A = double(A);
m1 = min(min(A));
m2 = max(max(A));
L = 255;
%Apply contrast stretching
B = uint8(L*(A-m1)/(m2-m1));

imshow(B); title('Contrast stretched image');
