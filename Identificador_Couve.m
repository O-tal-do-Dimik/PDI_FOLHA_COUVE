close all
clear all

pkg load image

#selecionando imagem e pegando o nome dela
[fileName, pathName] = uigetfile({'*.jpg'});
imagem = strcat(pathName, fileName);

#colocando a imagem  lida em uma variavel
img = imread(imagem);


img_gray = rgb2gray(img);

#size(img_gray);

#mostrar canal red, ficou meio escuro e a moeda clara
%imshow(img(:,:,1));

%mostrar canal gren
%imshow(img(:,:,2));
##
##mx = [-1, 0, 1; -2, 0, 2; -1, 0, 1];
##my = [1, 2, 1; 0, 0, 0; -1, -2, -1];
####
##gx = conv2(img_gray,mx);
##gy = conv2(img_gray,my);
##
##gxy = sqrt(gx.^2 + gy.^2);
####
##figure, imshow(gxy);

LIMIAR = 150;
% cria uma cópia de G em B
B = img_gray;
B(B<=LIMIAR) = 0;
B(B>LIMIAR) = 255;


#mostrando variavel 
imshow(B);