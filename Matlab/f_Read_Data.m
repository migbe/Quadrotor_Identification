function [outputArg1,outputArg2] = f_Read_Data(inputArg1,inputArg2)
%F_READ_DATA Summary of this function goes here
%   Detailed explanation goes here


%loop to display the read values, not final. Non-active code is for writing in a specific file, to be yet defined.
filename = sprintf('Log%s.txt',datestr(now,30));

fileID = fopen(filename,'wt');

while (1)
    %fwrite(IRser, ['14:14:14' char(13)]);
    disp(fgetl(IRser))

%fprintf(fileID,fgetl(IRser));
%fprintf(fileID,'\n');
end


outputArg1 = inputArg1;
outputArg2 = inputArg2;
end

