I=imread('trees.tif');
subplot(4,4,1);
imshow(I)
title('original image')

I9=I(:,end : -1 : 1, :);
subplot(4,4,2);
imshow(I9)
title('horizontal flip')

I8=I(end : -1 : 1 , : , :);
subplot(4,4,3);
imshow(I8)
title('vertical flip')

I7=I(end : -1 : 1, end : -1 : 1,:);
subplot(4,4,4);
imshow(I7)
title('horizontal flip & vertical flip')

s=flipdim(I,2);
subplot(4,4,5);
imshow(s)
title('horizontal flip')

s1=flipdim(s,1);
subplot(4,4,6);
imshow(s1)
title('vertical flip')

s2=flipdim(s1,2);
subplot(4,4,7);
imshow(s2)
title('horizontal flip & vertical flip')

I2 = I;
[rows, cols, ~] = size(I2);
for i = 1:rows
    for j = 1:floor(cols/2)
        temp = I2(i,j,:);
        I2(i,j,:) = I2(i,cols-j+1,:);
        I2(i,cols-j+1,:) = temp;
    end
end
subplot(4,4,8);
imshow(I2)
title('horizontal flip')


I3 = I;
for i = 1:floor(rows/2)
    for j = 1:cols
        temp = I3(i,j,:);
        I3(i,j,:) = I3(rows-i+1,j,:);
        I3(rows-i+1,j,:) = temp;
    end
end
subplot(4,4,9);
imshow(I3)
title('vertical flip')

I4 = I;
for i = 1:rows
    for j = 1:floor(cols/2)
        temp = I4(i,j,:);
        I4(i,j,:) = I4(i,cols-j+1,:);
        I4(i,cols-j+1,:) = temp;
    end
end
for i = 1:floor(rows/2)
    for j = 1:cols
        temp = I4(i,j,:);
        I4(i,j,:) = I4(rows-i+1,j,:);
        I4(rows-i+1,j,:) = temp;
    end
end
subplot(4,4,10);
imshow(I4)
title('horizontal flip & vertical flip')






Theory for Image Flipping in MATLAB
Introduction
Image flipping is a basic image manipulation technique where the image is reflected along a specified axis. The axis of reflection can be horizontal, vertical, or both. Flipping an image is useful for various applications such as image augmentation in machine learning, creating symmetrical patterns, or even simple aesthetic effects. In MATLAB, image flipping can be accomplished using array indexing, loop operations, and built-in functions like flipdim.

Image Flip Concepts
Horizontal Flip: This refers to flipping the image along a vertical axis. In simpler terms, it mirrors the image left to right. The leftmost pixel becomes the rightmost, and the rightmost pixel becomes the leftmost.

Vertical Flip: This refers to flipping the image along a horizontal axis. The topmost pixel becomes the bottommost, and the bottommost pixel becomes the topmost.

Both Horizontal and Vertical Flip: This involves flipping the image along both axes, essentially rotating the image upside down and mirrored horizontally, resulting in a 180-degree transformation of the original image.

Process in the MATLAB Code
Reading the Image: The image is first loaded using the imread function. This loads the image from the specified path into a matrix, where each element represents the pixel value of the image.

Manual Horizontal Flip using Loop: A horizontal flip can be achieved by swapping pixels along each row. The process works by iterating through each row and swapping pixels from the left side to the right. Specifically, for a given row, the pixel at column j is swapped with the pixel at column cols-j+1, where cols is the number of columns in the image.

Manual Vertical Flip using Loop: A vertical flip involves swapping pixels along each column. The process works by iterating through each column and swapping pixels from the top to the bottom. Specifically, for a given column, the pixel at row i is swapped with the pixel at row rows-i+1, where rows is the number of rows in the image.

Manual Horizontal and Vertical Flip: To achieve both flips simultaneously, first, a horizontal flip is applied, and then a vertical flip is performed on the already horizontally flipped image. This can be viewed as a combination of the two operations.

Using flipdim Function: MATLAB also provides the flipdim function, which is a built-in method for flipping images. This function is used to flip the image along a specified dimension. flipdim(I, 2) performs a horizontal flip (along the second dimension), and flipdim(I, 1) performs a vertical flip (along the first dimension). Using flipdim provides a concise way to flip the image compared to the manual loop-based method.
