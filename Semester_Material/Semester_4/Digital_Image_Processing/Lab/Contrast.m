% Read the color image
image = imread("E:\Courses\Digital Image Processing\Lab\img1.jpg");

image(:,:,1)=200;
image(:,:,2)=5;
image(:,:,3)=129;

subplot 141
imshow(image(:,:,1));

subplot 142
imshow(image(:,:,2));

subplot 143
imshow(image(:,:,3));

subplot 144
imshow(image);