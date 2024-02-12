x = imread('image.jpg');
x= rgb2gray(x);

[M,N] = size(x);

y = zeros([M+1 N+1]);

for i = 1 : M
    for j = 1 : N
        if ( x(i,j) >= 130 )
            y(i,j)=1;       
        else
            y(i,j)=0;         
        end
        
    end
end

subplot(2  ,2 ,1), imshow(x);
subplot(2  ,2 ,2),imshow(y);






