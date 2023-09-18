% Read input image
img = imread("E:\Courses\Digital Image Processing\Lab\cui_logo.jpg");

% Display and save the original image
subplot 131;
imshow(img);
title('Original Image');

% Convert image to grayscale (if needed)
if size(img, 3) == 3
    img = rgb2gray(img);
end

%imwrite(img, 'original_image.jpg');

% Add Gaussian noise to the image
noisy_image = imnoise(img, 'gaussian');

% Display and save the noisy image
subplot(132);
imshow(noisy_image);
title('Noisy Image');
%imwrite(noisy_image, 'noisy_image.jpeg');

% Apply adaptive local noise reduction filter
patch_size = 7;
filtered_image = zeros(size(noisy_image));

[row, col] = size(noisy_image);

for i = 1:row
    for j = 1:col
        % Define the local patch boundaries
        row_start = max(1, i - floor(patch_size/2));
        row_end = min(row, i + floor(patch_size/2));
        col_start = max(1, j - floor(patch_size/2));
        col_end = min(col, j + floor(patch_size/2));
        
        % Extract the local patch
        patch = double(noisy_image(row_start:row_end, col_start:col_end));
        
        % Calculate the local mean of the patch
        local_mean = mean(patch(:));
        
        % Calculate the local variance of the patch
        local_variance = var(patch(:));
        
        % Calculate the adaptive filter coefficient
        filter_coeff = local_variance / (local_variance + 0.01);
        
        % Apply the adaptive filter
        filtered_image(i, j) = noisy_image(i, j) - filter_coeff * (noisy_image(i, j) - local_mean);
    end
end

% Display and save the restored image
subplot(133);

imshow(uint8(filtered_image));
title('Restored Image');
%imwrite(filtered_image, 'enhanced_image.png');
