---%%%MAIN FILE%%%--

%Setting
COM_PORT = 4;
Baudrate = 9600;

Data.Timestamp = [];
Data.Speed = [];
Data.Force = [];
Data.Voltage = [];
Data.Current = [];

Ident_Signal = [];


%% Start Communication bettween arduino
f_Open_Communication();

%% Create Identification Signal
Ident_Signal = f_create_Identification_Signal();


%% Start identification

f_Set_Motor_Input(Ident_Signal);


while(1)
       f_Read_data();
end

%% Data analysis
run('data_Analysis.m');

