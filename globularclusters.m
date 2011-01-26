%This function takes in a image which has globular like
%clusters, and returns the area of the globs. Further Analysis
%may be added to the result (like distance to next nearest cluster).
%this is the functioned version of imageprocess.m

function clustersize = globularclusters(pattern)
%Functions
printline = @(x) fprintf(strcat(x,'\n'));
getbackground = @(image) imopen(image,strel('disk',15));
stripbackground = @(image) (image - getbackground(image));

files = ls;
result = [];
for i=1:length(files)
    file = files(i,1:end);
    file = file(file ~= ' ');
   	printline(file);
    if(~isempty(regexp(file,pattern,'ONCE')))
        printline('image file');
        image = imread(file);
        image = stripbackground(image);
        level = graythresh(image);
        bwimage = im2bw(image,level);
        %figure,imshow(bwimage);
        cc= bwconncomp(bwimage, 4);
        graindata = regionprops(cc, 'basic');
        presult = [graindata.Area];
        result = [result presult];
    end
end
clustersize=result;
end
