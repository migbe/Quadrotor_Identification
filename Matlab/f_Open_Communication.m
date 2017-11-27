function [outputArg1,outputArg2] = f_Open_Communication(inputArg1,inputArg2)
%F_OPEN_COMMUNICATION Summary of this function goes here
%   Detailed explanation goes here

%check if communication interface objects are available, if some are open, close them
if ~isempty(instrfind)
    fclose(instrfind)
end

%create and configure a serial object with the communcation interface (configuration is not final)
IRser=serial('COM4');
disp('Serial object created');
set(IRser,'BaudRate',9600);
set(IRser,'DataBits',8);
set(IRser,'Parity','none');
set(IRser,'StopBits',1);
set(IRser,'ReadAsyncMode','continuous');
set(IRser,'Terminator','CR/LF');

%open the serial ob
fopen(IRser);
disp('Serial object is open')

outputArg1 = inputArg1;
outputArg2 = inputArg2;


end

