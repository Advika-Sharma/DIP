I=imread('cameraman.tif');
I=double(I)
s=[2,3]
tform1=maketform('affine',[s(1) 0 0; 0 s(2) 0; 0 0 1]);
I1 = imtransform(I,tform1);
sh=[0.5 0.2];
tform2=maketform('affine',[1 sh(1) 0; sh(2) 1 0; 0 0 1]);
I2=imtransform(I,tform2);
theta=3*pi/4;
A=[cos(theta) sin(theta) 0; -sin(theta) cos(theta) 0; 0 0 1];
tform3=maketform('affine',A);
I3=imtransform(I,tform3);

figure,subplot(2,2,1),imagesc(I)
title('original','FontSize',10)
subplot(2,2,2),imagesc(I1)
title('Scaled','FontSize',10)
subplot(2,2,3),imagesc(I2)
title('Shear','FontSize',10)
subplot(2,2,4),imagesc(I3)
title('Rotation','FontSize',10)
colormap(gray)
