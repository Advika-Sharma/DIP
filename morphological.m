I = imread('trees.tif');
subplot(2, 3, 1);
imshow(I);
title('Original image');

% Dilated Image
se = strel('line', 7, 7);
dilate = imdilate(I, se);
subplot(2, 3, 2);
imshow(dilate);
title('Dilated image');

% Eroded Image
erode = imerode(I, se);
subplot(2, 3, 3);
imshow(erode);
title('Eroded image');

% Opened Image
open = imopen(I, se);
subplot(2, 3, 4);
imshow(open);
title('Opened image');