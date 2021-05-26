#include <Keyboard.h>


// Required libraries
#include <Mouse.h>
#include <PS2KeyAdvanced.h>

// Initialise variables.
#define DATAPIN 8 // Data pin (PS/2 pin 1) // Green wire
#define IRQPIN  3 // Clock pin (PS/2 pin 5) // White wire
// Ground pin (PS/2 pin 3) // Red goes to Ground.
// Voltage pin (PS/2 pin 4) // Yellow goes to 5V.

// Initialise variable for storing integer value
uint16_t c;
int i;

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
      case 33: // Numpad 1
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.press('c');
        Keyboard.releaseAll();
        break;
      case 34: // Numpad 2
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.press('v');
        Keyboard.releaseAll();
        break;
      case 35: // Numpad 3
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.press('v');
        Keyboard.releaseAll();
        break;
      case 36: // Numpad 4
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('a');
        Keyboard.releaseAll();
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('c');
        Keyboard.releaseAll();
        break;
      case 37: // Numpad 5
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('a');
        Keyboard.releaseAll();
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('v');
        Keyboard.releaseAll();
        break;
      case 38: // Numpad 6
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('a');
        Keyboard.releaseAll();
        break;
      case 39: // Numpad 7
        MoveMouseToTopLeft();
        ClickProperty();
        break;
      case 40: // Numpad 8
        MoveMouseToTopLeft();
        ClickFormularBar();
        break;
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
        MoveMouseToTopLeft();
        ClickProperty();
        break;   
      case 358: // F6
        MoveMouseToTopLeft();
        ClickFormularBar();
        break;   
      case 359: // F7
        MoveMouseToTopLeft();
        break;    
      case 360: // F8
        Keyboard.print("4560");
        break;
     } // End of switch
  } // End of if()
} // End of loop()

void MoveMouseToTopLeft () {
  for (i = 0; i < 20; i++) {// Loop to do "something" n times
    Mouse.move(0, -127, 0);
}
for (i = 0; i < 30; i++) {// Loop to do "something" n times
    Mouse.move(-127, 0, 0);
}
}

void ClickProperty (){ // 100, 220
  Mouse.move(100, 100, 0);
  Mouse.move(0, 120, 0);
  Mouse.click();
  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.write('a');
  Keyboard.releaseAll();
}

void ClickFormularBar () { //100,100 500,220
  Mouse.move(100, 100, 0);
  Mouse.click();
  Mouse.move(100, 120, 0);
  Mouse.move(100, 0, 0);
  Mouse.move(100, 0, 0);
  Mouse.move(100, 0, 0);
  Mouse.click();

}


void reboot() {
}
