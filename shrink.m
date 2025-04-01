a = imread('cameraman.tif');    
c = size(a);                
x = input('Enter horizontal shrink factor (e.g., 2): ');
y = input('Enter vertical shrink factor (e.g., 2): ');

newHeight = floor(c(1) / y);
newWidth = floor(c(2) / x);
b = zeros(newHeight, newWidth, 'like', a);

for i = 1:newHeight
    for j = 1:newWidth
        b(i, j) = a((i-1)*y + 1, (j-1)*x + 1);
    end
end

subplot(2, 2, 1); 
imshow(a); 
title('Original Image');

subplot(2, 2, 2); 
imshow(b); 
title('Shrink Image');
