%%LabTask#12
Image = imread("E:\Courses\Digital Image Processing\Lab\high_contrast.jpg");
cany = edge(Image,'canny');
subplot 221
imshow(cany); title('Orginal Image');
subplot 222
imshow(cany); title('Canny Edge Detection');
[H,theta,rho] = hough(cany);

a = max(max(H));
H1 = H/a;
subplot 223
imshow(imadjust(H1),[],'Xdata',theta,'Ydata',rho,'InitialMagnification','fit');
xlabel('\theta(degrees)'),ylabel('\rho'); title('Hough peaks');
axis on; axis normal; hold on;

P = houghpeaks(H,4)
x = theta(P(:,2));
y = rho(P(:,1));
plot(x,y,'s','color','red');

lines = houghlines(cany,theta,rho,P,'FillGap',50,'MinLength',10);
subplot 224
imshow(Image); title('Line Detection');
hold on; max_len = 0;

for k = 1:length(lines)
    xy = [lines(k).point1;lines(k).point2];
    plot(xy(1,:),xy(:,2),'LineWidth',2,'color','green');
    plot(xy(1,1),xy(1,2),'x','LineWidth',2,'color','yellow');
    plot(xy(2,1),xy(2,2),'x','LineWidth',2,'color','red');
end

%% Image segmentation
img = imread("E:\Courses\Digital Image Processing\Lab\high_contrast.jpg");

level = graythresh(img);
img_bw = im2bw(img,level);
subplot 231
imshow(img); title('Orignal Image');
subplot 232
imshow(img_bw); title('Automatic Binary Thresholding');

counts = imhist(img,256);
counts2 = imhist(img,8);
th = otsuthresh(counts);
img_bw_otsu = im2bw(img,th);
img_bw_otsu2 = im2bw(img,otsuthresh(counts2));
subplot 233
imshow(img_bw_otsu); title('Otsu Binary Thresholding');

levels = multithresh(img,4);
seg_img = imquantize(img,levels);
seg_img_col = label2rgb(seg_img);

subplot 234
imshow(seg_img,[]); title('Automatic thresholding with 4 thresh');

subplot 235
imshow(seg_img_col,[]); title('Automatic thresholding with 4 thresh(color)');

subplot 236
imshow(img_bw_otsu); title('counts = 16');
