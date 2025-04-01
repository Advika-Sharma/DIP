a = imread('cameraman.tif');    
c = size(a);                
x = input('Enter value of x: ');
y = input('Enter value of y: ');

b = zeros(c(1)-x, c(2)-y, 'like', a);


for i = x:c(1)-1
    for j = y:c(2)-1
        b(i-x+1, j-y+1) = a(i, j);   
    end
end


subplot(2, 2, 1); 
imshow(a); 
title('Original Image');

subplot(2, 2, 2); 
imshow(b); 
title('Cropped Image');
