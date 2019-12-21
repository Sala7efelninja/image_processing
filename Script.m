function [chars,words,lines] = Script( image,area_char,se_words,area_word,se_lines,area_line )

%char
chars=Count_Char(image,area_char);

%word
words=Count_Words_Lines(image,se_words,area_word);

%lines
lines=Count_Words_Lines(image,se_lines,area_line);

end

