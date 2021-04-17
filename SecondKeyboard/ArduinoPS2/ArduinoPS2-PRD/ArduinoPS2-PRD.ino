// Required libraries
#include <Keyboard.h>
#include <PS2Keyboard.h>

// Initialise variables.
const int DataPin = 8; // Green
const int IRQpin =  3; // White
// Red goes to Ground.
// Yellow goes to 5V.

PS2Keyboard PS2Keyboard;

void setup() {
  delay(1000);
  PS2Keyboard.begin(DataPin, IRQpin);
  
  // initialize control over the keyboard:
  Keyboard.begin();
} // End of setup()

void loop() {
  if (PS2Keyboard.available()) {
    Serial.println(PS2Keyboard.read());
    
    // read the next key
    switch( PS2Keyboard.read() ) {
      case '2':
        Keyboard.press('O');
        Keyboard.releaseAll();
        Keyboard.press('K');
        Keyboard.releaseAll();
        break;
      case '1':
        Keyboard.press('D');
        Keyboard.releaseAll();
        Keyboard.press('J');
        Keyboard.releaseAll();
        break;
    } // End of switch
  } // End of if
} // End of loop()
