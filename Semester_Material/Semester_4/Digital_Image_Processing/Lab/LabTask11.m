%Edge & line detection
%1) Edge detection using prewitt, sobel & roberts operator
Image = imread("E:\Courses\Digital Image Processing\Lab\Circuit_Board.tif");

BW1 = edge(Image,'prewitt');
BW2 = edge(Image,'sobel');
BW3= edge(Image,'roberts');
BW4= edge(Image,'canny');

subplot 151
imshow(Image); title('Orignal Image');

subplot 152
imshow(BW1); title('Prewitt');

subplot 153
imshow(BW2); title('Sobel');

subplot 154
imshow(BW3); title('Robert');

subplot 155
imshow(BW4); title('Canny');

%% Horizontal & vertical edge detection using prewitt
hor_mask = [-1 -1 -1; 0 0 0; 1 1 1;];
ver_mask = transpose(hor_mask);
diagonal_mask = [0 1 2; -1 0 1; -2 -1 0;];
off_diagonal_mask = [-2 -1 0; -1 0 1; 0 1 2;];

subplot 221
imshow(imfilter(Image,hor_mask)); title('Horizontal');

subplot 222
imshow(imfilter(Image,ver_mask)); title('Vertical');

subplot 223
imshow(imfilter(Image,diagonal_mask)); title('Diagonal');

subplot 224
imshow(imfilter(Image,off_diagonal_mask)); title('Off Diagonal');
%% Line detection using prewitt operator


