

/*
 * ESP32-Mini-Robot-Controller - Example Firmware
 * Controls 5 servos via Bluetooth
 * 
 * Hardware: ESP32-WROOM-32U, 5× servo headers, CH340C USB-UART
 * Software: Arduino Core for ESP32, ESP32Servo library
 */

#include <Arduino.h>
#include <BluetoothSerial.h>
#include <ESP32Servo.h>

BluetoothSerial SerialBT;
Servo servo[5];

// GPIO assignments
const int servoPins[5] = {13, 12, 14, 27, 26}; // S1-S5

void setup() {
  Serial.begin(115200);
  SerialBT.begin("ESP32_Robot_v1"); // Bluetooth device name
  
  // Attach servos
  for(int i = 0; i < 5; i++) {
    servo[i].attach(servoPins[i]);
    servo[i].write(90); // Start at middle position
  }
  
  Serial.println("ESP32-Mini-Robot-Controller ready");
}

void loop() {
  // Bluetooth command parser
  if(SerialBT.available()) {
    String cmd = SerialBT.readStringUntil('\n');
    cmd.trim();
    
    // Format: "S1:90" (Servo 1, 90 degrees)
    // Format: "S4:120" (Continuous servo 4, forward medium speed)
    if(cmd.startsWith("S")) {
      int servoNum = cmd.substring(1, 2).toInt() - 1; // S1→0, S2→1...
      int value = cmd.substring(cmd.indexOf(":")+1).toInt();
      
      if(servoNum >= 0 && servoNum < 5) {
        servo[servoNum].write(constrain(value, 0, 180));
        SerialBT.printf("Servo %d → %d°\n", servoNum+1, value);
      }
    }
  }
  
  delay(10);
}
