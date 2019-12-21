path='Case3\Case.3.2.jpg';

img=rgb2gray(imread(path));
case11=strcmp(path,'Case1\Case.1.1.jpg');
case12=strcmp(path,'Case1\Case.1.2.jpg');

case21=strcmp(path,'Case2\Case.2.1.jpg');
case22=strcmp(path,'Case2\Case.2.2.jpg');

case31=strcmp(path,'Case3\Case.3.1.jpg');
case32=strcmp(path,'Case3\Case.3.2.jpg');
case33=strcmp(path,'Case3\Case.3.3.jpg');

if case12 == 1 || case11 == 1
   [char,word,line] = Script(img,20,strel('disk',5),0,strel('line',1000,0),0)
elseif case21==1
    [char,word,line] = Script(img,40,strel('rectangle',[40,65]),0,strel('line',1000,0),0)
elseif case22 == 1 || case31 == 1 
    [char,word,line] = Script(img,250,strel('rectangle',[40,65]),0,strel('rectangle',[40,1000]),0)
elseif case32==1
    [char,word,line] = Script(img,30,strel('rectangle',[5,15]),200,strel('line',50,0),1000)
elseif case33 == 1
    [w,h]=size(img);
    img=imcrop(img,[((h/2)-(1920/2)), ((w/2)-(1520/2)),1920,1500]);
    [char,word,line] = Script(img,350,strel('rectangle',[20,40]),1100,strel('line',250,0),10000)
else
    imshow(zeros(500,500));
end


