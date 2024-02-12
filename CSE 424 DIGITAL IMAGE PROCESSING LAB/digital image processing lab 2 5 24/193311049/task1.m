im = imread('image.jpg');
[M,N] =size(im);

freq = zeros([1 256]);

for i=1:M;
    for j=1:N
        intensity = im(i,j);
        freq(intensity+1)=freq(intensity+1);
        
    end
end
stem(freq)
