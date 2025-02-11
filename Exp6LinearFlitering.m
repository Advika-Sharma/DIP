m1 = imread('nature.jpg');  % Read the image
m2 = imresize(m1, [180, 180]);  % Resize the image
subplot(3,3,1);
imshow(m2);
title('Resized Image');

m3 = rgb2gray(m2);  % Convert to grayscale
subplot(3,3,2);
imshow(m3);
title('Grayscale Image');

% Add Gaussian noise and apply median filter
n1 = imnoise(m3, 'gaussian');  
subplot(3,3,3);
imshow(n1);
title('Gaussian Noise');

n2 = medfilt2(n1);  % Apply median filter
subplot(3,3,4);
imshow(n2);
title('Filtered Gaussian Noise');

imshowpair(n1,n2,'montage');
title('paired image of filter and noise');

% Add Gaussian noise with a specific variance and apply median filter
n3 = imnoise(m3, 'gaussian', 0.3);
subplot(3,3,6);
imshow(n3);
title('Gaussian Noise (Variance 0.3)');

n5 = medfilt2(n3);  % Apply median filter
subplot(3,3,7);
imshow(n5);
title('Filtered Gaussian Noise (Variance 0.3)');

imshowpair(n3, n5,'montage');
title('paired image of filter and noise image');

% Add Poisson noise and apply median filter
n8 = imnoise(m3, 'poisson');
subplot(3,3,8);
imshow(n8);
title('Poisson Noise');

n9 = medfilt2(n8);  % Apply median filter
subplot(3,3,9);
imshow(n9);
title('Filtered Poisson Noise');

imshowpair(n8, n9,'montage');
title('paired image of poisson noise and filtered image');

% Add Salt & Pepper noise and apply median filter
n6 = imnoise(m3, 'salt & pepper');
subplot(3,3,5);
imshow(n6);
title('Salt & Pepper Noise');

n7 = medfilt2(n6);  % Apply median filter
subplot(3,3,6);
imshow(n7);
title('Filtered Salt & Pepper Noise');

%imshowpair(n6, n7,'montage');
%title('paired image of filtered image and noise image');

% Add Salt & Pepper noise with a specific density and apply median filter
n10 = imnoise(m3, 'salt & pepper', 0.3);
subplot(3,3,7);
imshow(n10);
title('Salt & Pepper Noise (Density 0.3)');

n11 = medfilt2(n10);  % Apply median filter
subplot(3,3,8);
imshow(n11);
title('Filtered Salt & Pepper Noise (Density 0.3)');

imshowpair(n10, n11,'montage');
title('paired image of salt and pepper noise and filtered image');
