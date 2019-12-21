function [ count ] = Count_Words_Lines( img,se,area )

fill=imfill(img);
img=fill-img;
T = graythresh(img);
thresh=im2bw(img,T);

% se = strel('disk',5);
dilate = imdilate(thresh,se);
cc=bwconncomp(dilate);
props_char=regionprops(cc,'Area');
count=0;
if area>0 
    for k = 1 : cc.NumObjects
      if props_char(k).Area>area
         count=count+1;
      end
    end
else
    count= cc.NumObjects;
end

end

