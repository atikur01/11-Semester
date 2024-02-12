x = imread('image.jpg');
x= im2double( rgb2gray(x) ) ;

imshow(x ,[]);

[M,N] = size(x);

A=3;
B=3;
n = zeros([A B]);

M=5;
N=4;

P = M+A-1;
Q = B+N-1;

y = zeros( [ M+A-1 , N+B ] );

h = ones([3 3 ])/9;

x = padarray( x , [A-1 ; B-1] );

for m=2:M-1
    for n = 2: N-1 
0        sub_image=x(m-1:M+1 , n-1:N+1);
        output = sub_image .* h;
        y(M-1, N-1) = sum(sum(output));
        
    end 
end

imshow(output);


    


















