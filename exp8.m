clc;
clear all;
close all;
I = imread('onion.png');
subplot(3,3,1);
imshow(I);
title('original image');

J=rgb2gray(I);
subplot(3,3,2);
imshow(J);
title('gray image');

K=im2bw(I);
subplot(3,3,3);
imshow(K);
title('binary image');

L=rgb2hsv(I);
subplot(3,3,4);
imshow(L);
title('HSV image');

Q=imcomplement(I);
subplot(3,3,5);
imshow(Q);
title('CMY image');

W=imcomplement(Q);
subplot(3,3,6);
imshow(W);
title('CMY to RGB image');




