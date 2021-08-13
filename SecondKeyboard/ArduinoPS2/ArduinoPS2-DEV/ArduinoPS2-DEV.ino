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
    Serial.println(c);

    if(
      c == 353 || c == 354 || c == 355 || c == 356 || c == 357 || c == 358 || c == 359 || c == 360 || c == 361 || c == 362 || c == 363 || c == 364 || c == 64 || c == 49 || c == 50 || c == 51 || c == 52 || c == 53 || c == 54 || c == 55 || c == 56 || c == 57 || c == 48 || c == 60 || c == 95 || c == 81 || c == 87 || c == 69 || c == 82 || c == 84 || c == 89 || c == 85 || c == 73 || c == 79 || c == 80 || c == 65 || c == 83 || c == 68 || c == 70 || c == 71 || c == 72 || c == 74 || c == 75 || c == 76 || c == 90 || c == 88 || c == 67 || c == 86 || c == 66 || c == 78 || c == 77 || c == 93 || c == 94 || c == 92 || c == 91 || c == 58 || c == 59 || c == 61 || c == 62 || c == 283 || c == 285 || c == 4355 || c == 16646 || c == 8456 || c == 780 || c == 2314 || c == 287 || c == 1291 || c == 781 || c == 270 || c == 8457 || c == 16647 || c == 286 || c == 284 || c == 260 || c == 258 || c == 6 || c == 281 || c == 282 || c == 273 || c == 274 || c == 275 || c == 276 || c == 279 || c == 277 || c == 280 || c == 278 || c == 257 || c == 47 || c == 46 || c == 45 || c == 32 || c == 33 || c == 34 || c == 35 || c == 36 || c == 37 || c == 38 || c == 39 || c == 40 || c == 41 || c == 42 || c == 44 || c == 43
    ){
      Keyboard.print("ino|");
        PrintNumpad(c);
    }

//     } // End of switch
  } // End of if()
} // End of loop()

int PrintNumpad(int x){

String stringOne = String(x); 
int strlength = stringOne.length();

  for(int i =0; i < stringOne.length(); i++ ) {
    char c = stringOne[i];
    switch( c ){
      case '1':
        Keyboard.press(225);
        Keyboard.release(225);
        break;
      case '2':
        Keyboard.press(226);
        Keyboard.release(226);
        break;
      case '3':
        Keyboard.press(227);
        Keyboard.release(227);
        break;
      case '4':
        Keyboard.press(228);
        Keyboard.release(228);
        break;
      case '5':
        Keyboard.press(229);
        Keyboard.release(229);
        break;
      case '6':
        Keyboard.press(230);
        Keyboard.release(230);
        break;
      case '7':
        Keyboard.press(231);
       Keyboard.release(231);
        break;
      case '8':
        Keyboard.press(232);
        Keyboard.release(232);
        break;
      case '9':
        Keyboard.press(233);
        Keyboard.release(233);
        break;
      case '0':
        Keyboard.press(234);
        Keyboard.release(234);
        break;
    }
  } 

  Keyboard.println("");
} // End of PrintNumpad

void reboot() {
}
