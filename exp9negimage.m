I=imread('trees.tif');
subplot(2,2,1);
imshow(I)
title('original image')
L=2^8;
neg=((L-1)-I);
subplot(2,2,2)
imshow(neg)
title('negative image')