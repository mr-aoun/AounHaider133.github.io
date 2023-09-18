%%LabTask#08
%% Filtering in the frequency domain

image = imread("E:\Digital Image Processing\Lab\cui_logo.jpg");
image = rgb2gray(image);

image = imresize(image,[256,256]);

[x,y] = meshgrid(-128:127, -128:127 );
dist = sqrt(x.^2+y.^2);

il = (dist < 15);
il2 = dist < 50;
il3 = dist < 150;
%out = image.*il;

af = fftshift(fft2(double(image)));
ilout = af.*il3;
iloutput = ifft2(fftshift(ilout));


%Working on high pass filter

ih = 1-il;
ihout = af.*ih;
ihoutput = ifft2(fftshift(ihout));

%Working on Butterworth low pass filter
bl = 1./(1 + dist/150.^(2*1));

bfout = af.*bl;
bfoutput = uint8(ifft2(fftshift(bfout)));

%Working on high pass butterworth filter
bl2 = 1./(1 + dist/50.^(2*1));
bh = 1 - bl2;
bhout = af.*bh;
bhoutput = ifft2(fftshift(bhout));

% Working on Guassian Low pass filter
gl = exp(-(dist.^2/(2*(15^2))));
gl2 = exp(-(dist.^2/(2*(50^2))));

glout = af.*gl2;
gloutput = uint8(ifft2(fftshift(glout)));

%Working on Guassian high pass filter
gh = 1 - gl;
ghout = af.*gh;
ghoutput = uint8(ifft2(fftshift(ghout)));

%Displaying all the images
subplot(6,3,2);
imshow(image); title('Orignal Image');
pause; subplot(6,3,4);
imshow(il); title('Filter');
pause; subplot(6,3,5);
imshow(uint8(1+log(ilout)),[]); title('IDLF');
pause; subplot(6,3,6);
imshow(uint8(iloutput)); title('IDLF image');
pause; subplot(6,3,7);
imshow(ih); title('IDHF');
pause; subplot(6,3,8);
imshow(uint8(ihoutput)); title('IDHF image');

pause; subplot(6,3,10);
imshow(uint8(1+log(ihout)),[]); title('BLPF');

pause; subplot(6,3,11);
imshow(bfoutput); title('BLPF image');

pause; subplot(6,3,13);
imshow(bh); title('BHPF');

pause; subplot(6,3,14);
imshow(bhoutput); title('BHPF image');

pause; subplot(6,3,15);
imshow(glout); title('GLPF');
pause; subplot(6,3,16);
imshow(gloutput); title('GLPF image');

pause; subplot(6,3,17);
imshow(ghout); title('GHPF');
pause; subplot(6,3,18);
imshow(ghoutput); title('GHPF image');
