

uint16_t Baud = 9600;
uint8_t interruptPin = 3;  //Hall Sensor interrput
// Timestamp; Speed; Force; Current; Voltage;
int SensorData[6];


void setup()
{
  //
  Serial.begin(Baud);
  setInterrput();
    
              
  
}


void loop() 
{

  receiveSerial();
  
  
  
}

//Reads UART Data
void receiveSerial(){
  
}


// Interrput from Hall Sensor
void setInterrput(){
  
}


// Counts Time Between Interrupts
void setupTimer(){
  
}

// Read
void readAllSensorData(){
  
}

//Sets the Motor PWM
void setPWM(uint16 pwmSET){
  
}

