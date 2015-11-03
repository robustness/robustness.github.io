---
layout: post
title: Image Processing
categories:
- Tech
tags:
- Software
---

## Examples

{% highlight Matlab %}

% http://blogs.mathworks.com/steve/2012/02/20/writing-image-files/

rgb_plot = imread('screen.png');
imwrite(rgb_plot,'plot_screen.jpg');
rgb_plot_compressed = imread('plot_screen.jpg');

subplot(2,2,1)
imshow(rgb_plot)
title('Original Image')
limits = [80 105 210 230];
axis(limits)


subplot(2,2,2)
imshow(rgb_plot_compressed)
title('JPEG compressed image')
axis(limits)

subplot(2,2,3)
imshow(rgb_plot)
limits = [345 380 240 265];
axis(limits)

subplot(2,2,4)
imshow(rgb_plot_compressed)
axis(limits)


% jpg: reducing space without adversely affecting image quality


rgb = imread('peppers.png');
imshow(rgb);
imwrite(rgb, 'peppers.jpg');

imshow('peppers.jpg');


subplot(1,2,1)
imshow('peppers.png')
limits= [ 232 276 215 248]
axis(limits)
title('Original')

subplot(1,2,2)
imshow('peppers.jpg')
axis(limits)
title('JPG compressed')

%compression ratio

rgb = imread('peppers.jpg');
info = imfinfo('peppers.jpg');
bytes_in_memory_peppers = numel(rgb)
bytes_on_disk_peppers_jpg = info.FileSize;
compression_ratio = bytes_in_memory_peppers / bytes_on_disk_peppers_jpg


i = imread('peppers.jpg');
for l = 1:400
    for m = 1:400
        i(l,m,:) = [0,0,0];
    end
end
imshow(i)

% phase 2

img = imread('peppers.jpg');
info = imfinfo('peppers.jpg');
height = info.Height;
width = info.Width;
for i = 1:400
    % 
    
    l = floor(mod(abs(randn) * height,height)); 
    
   
    n = floor(mod(abs(randn) * width,width)); 
    if(l == 0)
        l = l + 1;
    end
    if (n == 0)
        n = n + 1;
    end
    
    img(round(l),round(n),:) = [0,0,0];
end
imshow(img)

% phase 3

rgb = [ ...
    94    79   162
    50   136   189
   102   194   165
   171   221   164
   230   245   152
   255   255   191
   254   224   139
   253   174    97
   244   109    67
   213    62    79
   158     1    66  ];

[x,y] = size(rgb);


img = imread('peppers.jpg');
info = imfinfo('peppers.jpg');
height = info.Height;
width = info.Width;
for i = 1:40000
    % 
    l = round(mod(abs(randn) * height,height)); 
    n = round(mod(abs(randn) * width,width)); 
    if(l == 0)
        l = l + 1;
    end
    if (n == 0)
        n = n + 1;
    end
    
    index = round(mod(abs(randn) * x, x)); 
    if (index == 0)
        index = index + 1;
    end
    img(l,n,:) = rgb(index,:);
end
imshow(img)

a = [0.1 0.125 1.3]
class(a)
b = uint8(5)

class(b)
rgb = imread('peppers.png');
rgb(1:3,1:4,1)
class(rgb)

c = uint64(184467440737095516)
d = double(c)
e = uint64(d)
e - c



%Example 2

rgb = [ ...
    94    79   162
    50   136   189
   102   194   165
   171   221   164
   230   245   152
   255   255   191
   254   224   139
   253   174    97
   244   109    67
   213    62    79
   158     1    66  ] / 255;

b = repmat(linspace(0,1,200),20,1);
imshow(b,[],'InitialMagnification','fit')
colormap(rgb)


% Example 3

figure(1);imshow(I); figure(2); imhist(I); figure(3); imshow(255-I); figure(4); imhist(255-I)

figure(1);imshow(I); figure(2); imhist(I); figure(3); histeq(I); figure(4); imhist(histeq(I))

% Example 4

f = imread('mammogram.jpg');g1 = imadjust(f, [0 1], [1 0]);
imshow(g1)

% Example 5

f = imread('mammogram.jpg');
g2 = imadjust(f, [0.5 0.75], [0 1]);

% Example 6
f = imread('mammogram.jpg');
g6 = imadjust(f, [], [], 2);
figure(1); imshow(f); figure(2); imshow(g6);


% Example 7
f = imread('mammogram.jpg');
g6 = imadjust(f, [], [], 0.2);
figure(1); imshow(f); figure(2); imshow(g6);





a = randn(10000,1)
mean(a)
std(a)
floor(a*100)
hist(a)

i = imread('flowers.tif');
imshow(i)
imfinfo('sf.tif')

impixel(i,20,50)

impixelinfo

RGB = imread('sf.tif');
c = [12 146 410];
r = [104 156 129];
pixels = impixel(RGB,c,r)

% How to exchange it
image1 = rand(100,100,3);
image2 = rand(100,100,3);
diffPixel = image1(51,67,:) - image2(51,67,:);
image1(51,67,:) = [1, 1, 0];

RGB(51,67,:) = [1, 1, 0];





{% endhighlight %}
