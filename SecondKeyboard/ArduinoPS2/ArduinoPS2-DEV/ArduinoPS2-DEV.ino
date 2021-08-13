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
uint16_t c = 1;
uint16_t d;
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
    d = PS2KeyAdvanced.read();

  if(d == 353 or d == 354){
    
    Serial.println( d);
    Serial.println( c);
    Serial.println();Serial.println();Serial.println();

    if(d == 353){
      c += 10;
    }

    if(d == 354){
      c -= 10;
    }


      Keyboard.press(c);
      Keyboard.releaseAll();
  }

    

  } // End of if()
} // End of loop()

void reboot() {
}
