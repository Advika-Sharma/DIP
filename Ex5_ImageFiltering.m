clc;
close all

clear;

I=imread ('trees.tif');

figure;

subplot (2,2,1);

imshow (I);

title ('original Image');

a=imnoise (I, 'gaussian', 0.1,0.01);

subplot (2,2,2);

imshow (a);

title ('Noise Image');

h=fspecial ('gaussian', [15, 15],3);

out=imfilter (a, h, 'conv');

subplot (2,2,3);

imshow (out);

title ('output Image');

subplot (2,2,4);

surf (1:15, 1:15, h);

tite ('PSF');

