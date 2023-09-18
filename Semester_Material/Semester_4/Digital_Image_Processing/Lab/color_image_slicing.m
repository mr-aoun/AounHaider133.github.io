Image = imread("E:\Courses\Digital Image Processing\Lab\color_image3.jpg");

A = rgb2gray(Image);
[row,col] = size(A);
B = zeros(row,col);

for i=1:row
    for j=1:col
        if A(i,j)>=0 && A(i,j)<=128
            B(i,j) = 255;
        
        elseif A(i,j)>128 && A(i,j)<=200
                B(i,j) = 128;
            
            else 
                B(i,j) = 0;
    end
    end
    end

    subplot 121
    imshow(Image); title('Orignal image');
    subplot 122
    imshow(B); title('Sliced image');