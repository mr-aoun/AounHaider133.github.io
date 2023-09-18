%Lab Task#09
Image = imread("E:\Courses\Digital Image Processing\Lab\color_image3.jpg");

%Displaying RGB image
A = Image(:,:,1);
B = Image(:,:,2);
C = Image(:,:,3);

subplot 331
imshow(Image); title('Orignal Image');

subplot 332
imshow(A); title('Red Layer');

subplot 333
imshow(B); title('Green Layer');

subplot 334
imshow(C); title('Blue Layer');

%cmyImage = imcomplement(Image);
%OR
Cyan = 255 - A; Magenta = 255 - B; Yellow = 255 - C;

Black = min(Cyan,min(Magenta,Yellow));

cmyImage = cat(3,Cyan,Magenta,Yellow);

subplot 335
imshow(cmyImage); title('CMY Image');


subplot 336
imshow(Cyan); title('Cyan Layer');

subplot 337
imshow(Magenta); title('Magenta Layer');

subplot 338
imshow(Yellow); title('Yellow Layer');

subplot 339
imshow(Black); title('Black Layer');

%RGB to HSI image

HSI = rgb2hsv(uint8(Image));
H = HSI(:,:,1);
S = HSI(:,:,2);
I = HSI(:,:,3);

figure;
subplot 141
imshow(HSI); title('HSI Image');

subplot 142
imshow(H); title('Hue');

subplot 143
imshow(S); title('Saturation');

subplot 144
imshow(I); title('Intensity');

%Gray scale to color transformation
GrayScaleImage = rgb2gray(Image);
img = grayslice(GrayScaleImage,8);
colors1 = [ 
0 0 0 % First element = black 
0 0 1 % blue 
0 1 0 % green 
0 1 1 % cyan 
1 0 0 % red 
1 0 1 % purple 
1 1 0 % yellow 
1 1 1]; % Last element = white 

figure;
subplot 121
imshow(Image); title('Orignal Image');

subplot 122
imshow(img,colormap(colors1)); title('Color mapped image');

%Task#03

%1)Intensity Enhancement of rgb

i1 = 2.*A;
i2 = 2.*B;
i3 = 2.*C;
i = cat(3,i1,i2,i3);

figure;
subplot 241
imshow(i); title('Enhanced RGB');


%1) B) Image enhancement of HSI

ii = hsv2rgb(cat(3,H,S,I.*2));

subplot 242
imshow(ii); title('Enhanced RGB from HSI');

%2) Histogram equalization on RGB

h = cat(3,histeq(A),histeq(B),histeq(C));

subplot 243
imshow(h); title('RGB HistEq');

%Histogram equalization on HSI
hh = hsv2rgb(cat(3,H,S,histeq(I)));


subplot 244
imshow(hh); title('HUE to RGB HistEq');

%3) Smoothing on RGB & HSI image
f = fspecial('average',15);

rgbSmoothed = cat(3,imfilter(A,f),imfilter(B,f),imfilter(B,f));
tt = imfilter(I,f);
hsiSmoothed = cat(3,H,S,tt);

subplot 245
imshow(rgbSmoothed); title('RGB Smoothing');

subplot 246
imshow(hsv2rgb(hsiSmoothed)); title('HSI Smoothing');

%4) Sharpening on RGB & HSI Image
f2 = fspecial('unsharp');
rgbSharped = cat(3,imfilter(A,f2),imfilter(B,f2),imfilter(B,f2));
t = imfilter(I,f2);
hsiSharped = cat(3,H,S,t);

subplot 247
imshow(rgbSharped); title('RGB Sharped');

subplot 248
imshow(hsv2rgb(hsiSharped)); title('HSI Sharped');
