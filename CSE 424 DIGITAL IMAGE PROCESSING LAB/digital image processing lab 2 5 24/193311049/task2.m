x = imread('image.jpg');
x= rgb2gray(x);

[M,N] = size(x);

n = zeros([1 256]);

for i = 1 : M
    for j = 1 : N
        intensity = x (i,j);
        n(intensity+1) = n(intensity+1)+1;
    end
end


c = (M*N)/255;

s= zeros( [1 256] );

for k=0:255
    for j=0:k
        s(k+1)=s(k+1)+n(j+1);
    end
    s(k+1) = round( s(k+1)*c );
end


for i=1:M
    for j=1:N
        intensity=x(i,j);
        new_intensity=s(intensity+1);
        x(i,j)=new_intensity;
    end
end

% stem( n );    




    

