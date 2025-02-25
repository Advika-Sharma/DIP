I=imread('trees.tif');
subplot(2,2,1);
imshow(I)
title('original image')
L=2^8;
neg=((L-1)-I);
subplot(2,2,2)
imshow(neg)
title('negative image')



### Theory for Image Negative Conversion in MATLAB

#### Introduction to Image Negatives
An image negative is the inversion of the pixel values of an image. This process involves reversing the intensity levels of each pixel. In simple terms, the light areas in the image become dark, and dark areas become light. The negative image technique is widely used in photography and image processing to enhance visibility or emphasize certain details.

The concept of image negative can be understood in terms of pixel intensity values. Each pixel in a grayscale image typically holds a value between 0 (black) and the maximum value (255 for an 8-bit image, 65535 for a 16-bit image, etc.). In the negative image, these values are inverted.

For an 8-bit image, the formula to compute the negative of a pixel is:

\[
\text{Negative Pixel Value} = (L - 1) - \text{Original Pixel Value}
\]
Where:
- \(L\) is the total number of levels in the image. For an 8-bit image, \(L = 2^8 = 256\).
- The original pixel value is the intensity of the pixel in the original image.
- The resulting pixel value is the intensity of the pixel in the negative image.

#### Process Overview of the MATLAB Code
The MATLAB code provided demonstrates how to read an image, compute its negative, and display both the original and the negative images.

1. **Reading the Image**:
   The command `I = imread('trees.tif');` reads the image file `trees.tif` and stores it in the variable `I`. This image can be of any type (e.g., grayscale or RGB). If the image is grayscale, each pixel will have an intensity value between 0 and 255, which is typical for 8-bit images.

2. **Displaying the Original Image**:
   `subplot(2, 2, 1);` divides the figure window into a 2x2 grid of subplots, and `imshow(I)` displays the original image in the first subplot. `title('original image')` sets the title of this subplot.

3. **Calculating the Negative Image**:
   The variable `L` is defined as \(2^8 = 256\), which corresponds to the number of intensity levels for an 8-bit grayscale image. The negative of each pixel is calculated using the formula:

   \[
   \text{Negative Pixel Value} = (L - 1) - \text{Original Pixel Value}
   \]

   This operation is performed on every pixel in the image matrix `I`, and the result is stored in the variable `neg`.

4. **Displaying the Negative Image**:
   The negative image is then displayed in the second subplot using `imshow(neg)`. The title of this subplot is set to 'negative image', indicating that this is the result of the negative transformation.

#### Mathematical Foundation
The image negative transformation is based on the concept of pixel intensity inversion. In an 8-bit image, the intensity of pixels ranges from 0 (black) to 255 (white). The formula \((L - 1) - I\) inverts the intensity values, where \(L\) is 256 for 8-bit images.

For instance:
- If a pixel value is 0 (black), its negative value becomes 255 (white).
- If a pixel value is 255 (white), its negative value becomes 0 (black).
- Intermediate values are also inverted proportionally.

This operation highlights the contrast between light and dark areas of an image.

#### Applications of Image Negative
- **Enhancement**: Image negatives can enhance visibility of certain features that may not be visible in the original image. For instance, details in shadowed regions may become more noticeable.
- **Artistic Effect**: The negative effect is often used in artistic photography or digital art to create surreal or abstract visual effects.
- **Medical Imaging**: In medical imaging, such as X-rays or MRI scans, negative images can sometimes reveal important details that are difficult to spot in the original image.

#### Conclusion
The MATLAB code provided demonstrates a simple and effective way to generate the negative of an image. This technique is based on pixel intensity inversion and is useful in various fields, including image enhancement, artistic rendering, and medical imaging.
