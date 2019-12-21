function [ chars ] = Count_Char( img,area )

fill=imfill(img);
img=fill-img;
T = graythresh(img);
thresh=im2bw(img,T);

cc=bwconncomp(thresh,8);
L=labelmatrix(cc);
props_char=regionprops(L,'Area');
chars=0;
 for k = 1 : cc.NumObjects
      if props_char(k).Area>area
         chars=chars+1;
      end
 end

 
end

