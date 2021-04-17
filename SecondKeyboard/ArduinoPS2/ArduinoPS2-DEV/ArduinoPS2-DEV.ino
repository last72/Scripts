#include <Keyboard.h>

#include <PS2KeyAdvanced.h>

/* Keyboard constants  Change to suit your Arduino
   define pins used for data and clock from keyboard */
#define DATAPIN 8
#define IRQPIN  3

uint16_t c;

PS2KeyAdvanced PS2KeyAdvanced;


void setup( )
{
  // Configure the keyboard library
  PS2KeyAdvanced.begin( DATAPIN, IRQPIN );
  Serial.begin( 115200 );
  Serial.println( "PS2 Advanced Key Simple Test:" );
  
  // initialize control over the keyboard:
  Keyboard.begin();
}


void loop( )
{
if( PS2KeyAdvanced.available( ) )
  {
  // read the next key
  c = PS2KeyAdvanced.read( );
  Serial.println( c );
  

  switch (c) {
    case 90:
      Serial.println("YOUPRESSED z");
      Keyboard.press('O');
      Keyboard.releaseAll();
      Keyboard.press('K');
      Keyboard.releaseAll();
      break;
    case 88:
      Keyboard.press('d');
      Keyboard.releaseAll();
      Keyboard.press('K');
      Keyboard.releaseAll();
      break;
  }
  }
}
