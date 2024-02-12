x = im2double(rgb2gray(imread('img.jpg')));

[M, N] = size(x);
A = 3;
B = 3;
h = ones([3 3]) / 9;
P = M + A - 1;
Q = N + B - 1;

%this is the output image
y = zeros([P Q]);
%padding the input image
x = padarray(x, [A-1 B-1]);
for m = 2 : M-1
    for n = 2 : N-1
        sub_image = x(m-1:m+1, n-1:n+1);
        output = sub_image .* h;
        y(m-1, n-1) = sum(sum(output));
    end
end

figure;
imshow(x, []);
figure;
imshow(y, []);