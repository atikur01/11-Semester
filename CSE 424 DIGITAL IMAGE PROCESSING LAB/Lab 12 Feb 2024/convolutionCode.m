% Read the image, convert it to grayscale, and normalize pixel values
x = im2double(rgb2gray(imread('img.jpg')));

% Get the size of the input image
[M, N] = size(x);

% Define filter sizes
A = 3;
B = 3;

% Define a 3x3 averaging filter
h = ones([3 3]) / 9;

% Calculate dimensions of the output image after filtering
P = M + A - 1;
Q = N + B - 1;

% Initialize the output image matrix with zeros
y = zeros([P Q]);

% Pad the input image to handle convolution at borders
x = padarray(x, [A-1 B-1]);

% Perform convolution using nested loops
for m = 2 : M-1
    for n = 2 : N-1
        % Extract the 3x3 neighborhood from the padded image
        sub_image = x(m-1:m+1, n-1:n+1);
        
        % Perform element-wise multiplication with the filter
        output = sub_image .* h;
        
        % Sum the values to get the result of convolution
        y(m-1, n-1) = sum(sum(output));
    end
end

% Display the original image
figure;
imshow(x, []);

% Display the filtered image
figure;
imshow(y, []);
