im = imread('image.jpg');
 subplot(2,2,1), imshow(im);

size(im);

grayScale_image = rgb2gray(im);
subplot(2,2,2),imshow( grayScale_image );

bw_image = im2bw(im);
subplot(2,2,3), imshow(bw_image);