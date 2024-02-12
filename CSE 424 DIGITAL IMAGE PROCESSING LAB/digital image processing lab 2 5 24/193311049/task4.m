x = imread('image.jpg');
x= rgb2gray(x);

[M,N] = size(x);

y = zeros([M+1 N+1]);

for i = 1 : M
    for j = 1 : N
        if ( x(i,j) >= 120 && x(i,j)<=130 )
            y(i,j)= 6* x(i,j) ;       
        else
            y(i,j)=x(i,j);         
        end
        
    end
end

subplot(2  ,2 ,1), imshow(x, []);
subplot(2  ,2 ,2),imshow(y, []);






