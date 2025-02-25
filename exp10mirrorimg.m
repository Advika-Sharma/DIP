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

