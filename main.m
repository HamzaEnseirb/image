clear, clc; close all;

seuil = 161;
img = imread('index2.jpg');
img=img(:,:,1);
%img = imread('cameraman.tif');
figure, imshow(img);
colormap('gray');
[x,y] = ginput(2);

line(x,y);
[X,Y,signature]=premiere_signature(img,x,y);

signature = binarisation(signature,seuil);

figure, plot(signature);
title("Signature binarisée")
