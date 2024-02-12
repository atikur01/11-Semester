im = imread('image.jpg');
subplot(2,2,1),imshow(im);

red=im(    :,:,  1);
subplot(2,2,2) , imshow(red);

green=im(    :,:,  2);
subplot(2,2,3) , imshow(green);

blue=im(    :,:,  3);
subplot(2,2,4) , imshow(blue);


