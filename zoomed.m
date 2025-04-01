a = imread('cameraman.tif');    
c = size(a);                
x = input('Enter horizontal zoom factor (e.g., 2): ');
y = input('Enter vertical zoom factor (e.g., 2): ');

b = zeros(c(1)*x, c(2)*y, 'like', a);

for i = 1:c(1)
    for j = 1:c(2)
        b((i-1)*x+1:(i-1)*x+x, (j-1)*y+1:(j-1)*y+y) = repmat(a(i,j), [x y]);
    end
end

subplot(2, 2, 1); 
imshow(a); 
title('Original Image');

subplot(2, 2, 2); 
imshow(b); 
title('Zoomed Image');