
// Required libraries
#include <Keyboard.h>
#include <Mouse.h>
#include <PS2KeyAdvanced.h>

// Initialise variables.
#define DATAPIN 8 // Data pin (PS/2 pin 1) // Green wire
#define IRQPIN  3 // Clock pin (PS/2 pin 5) // White wire
// Ground pin (PS/2 pin 3) // Red goes to Ground.
// Voltage pin (PS/2 pin 4) // Yellow goes to 5V.

// Initialise variable for storing integer value
uint16_t c;

// Initialise for PS2KeyAdvanced 
PS2KeyAdvanced PS2KeyAdvanced;

// setup()
void setup( )
{
  // Configure the PS2KeyAdvanced library
  PS2KeyAdvanced.begin( DATAPIN, IRQPIN );
  Serial.begin( 115200 );
  Serial.println( "PS2 Advanced Key Simple Test:" );
  
  // initialize control over the keyboard:
  Keyboard.end();
  Keyboard.begin();

  // initialize control over the mouse:
  Mouse.end();
  Mouse.begin();

} // End of setup()

// loop()
void loop( )
{
// Check if the keyboard is on
if( PS2KeyAdvanced.available( ) )
  {
    // read the next key
    c = PS2KeyAdvanced.read( );
    Serial.println( c );

    switch (c) {
      case 90: // z
        Serial.println("YOUPRESSED z");
        Keyboard.press('O');
        Keyboard.releaseAll();
        Keyboard.press('K');
        Keyboard.releaseAll();
        break;
      case 88: // x
        Keyboard.press('d');
        Keyboard.releaseAll();
        Keyboard.press('K');
        Keyboard.releaseAll();
        break;
      case 50:
        Keyboard.press('3');
        Keyboard.releaseAll();
        Keyboard.press('0');
        Keyboard.releaseAll();
        break;
      case 93:
        Keyboard.begin();
        break;
      case 94:
        Serial.println("Try reset");
        Keyboard.press('R');
        Keyboard.releaseAll();
        Keyboard.releaseAll();
        Keyboard.begin();
        Keyboard.end();
        reboot();
        break;
      case 353: // F1
        Keyboard.print("F1");
        break;
      case 354: // F2
        Keyboard.print("F2");
        break;
      case 355: // F3
        Keyboard.write(176);
        break;
      case 356: // F4
        Keyboard.print("4560");
        break;
      case 357: // F5
        Mouse.move(10, 0, 0);
        break;   
      case 358: // F6
        Mouse.move(0, 10, 0);
        break;   
      case 359: // F7
        Mouse.move(-1000, -1000, 0);
        break;    
      case 360: // F8
        Keyboard.print("4560");
        break;
     } // End of switch
  } // End of if()
} // End of loop()


void reboot() {
}
