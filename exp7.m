i=imread('trees.tif');
subplot(2,2,1);

imshow(i);
title('original image');
f=ones(3,3)/9;
h=imfilter(i,f,'circular');
subplot(2,2,2);
imshow(h);
title('averaged image');