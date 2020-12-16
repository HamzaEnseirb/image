clear, clc; close all;


img = imread('index2.jpg');
img=img(:,:,1);
figure, imshow(img);
colormap('gray');
[x,y] = ginput(2);


[X,Y,signature]=premiere_signature(img,x,y);
seuil = otsu(img);
signature = binarisation(signature,seuil);
[debut, fin]=limites(signature);

line ([X(debut);X(fin)],[Y(debut);Y(fin)]);
[X1,Y1,rayon_utile]=premiere_signature(img,[X(debut);X(fin)],[Y(debut);Y(fin)]);
figure, plot(signature);
title("Signature binarisée")
signature = binarisation(rayon_utile,seuil);
figure, plot(signature);
title("Rayon utile")
