%%LabTask#08
%% Filtering in the frequency domain

image = 
[x,y] = meshgrid(-128:128, -128:128 );
dist = sqrt(x.^2+y.^2);

il = dist < 15;
out = image.*f;

af = fftshift(fft2(image));
ilout = af.*f;
iloutput = ifft2(fftshift(ilout));
figure;
imshow(il);
figure;
imshow(unint8(1+log(ilout),[]));
figure;
imshow(uint8(iloutput));
