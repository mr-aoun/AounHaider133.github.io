%% Lab task#01
%Reading and displaying image file
 fileName = input('Enter the file name:','s');
 fileFormat = input('Enter the file format:','s');
 if ~exist(strcat(fileName,strcat('.',fileFormat)))
     disp('File not exist!!');
 else
     A = imread(strcat(fileName,strcat('.',fileFormat)));
     imshow(A);
     disp('Image displayed!!');
 end
%% Renaming and storing file with different extenshion
Name = input('Enter the new filename: ','s');
Extenshion = input('Enter the new extenshion of file: ','s');


img1='E:/download.jfif';
img2 = strrep(img1,'.jfif',strcat('.',Extenshion));
img2 = strrep(img2,'download',Name);
copyfile(img1,img2);

 imshow(img1);
 %% Ploting sin & cos
 x = [0:0.01:10];
 plot(x,sin(x),'b');
 xlabel('Size');
 ylabel('Time');
 title('Sinosuidal Wave');
 %% Displaying image in grid system
 
 subplot(2,2,1); imshow('E:/download.jfif');
 subplot(2,2,2); imshow('E:/download2.jpeg');
 subplot(2,2,3); imshow('E:/download3.png');
 subplot(2,2,4); imshow('E:/Other.jpeg');

%% To clear the terminal & workspace
clc;
clear all;
