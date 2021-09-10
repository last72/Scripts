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

    Serial.println( d);

    if( // All the rest
        d == 49 or d == 50 or d == 51 or d == 52 or d == 53 or d == 54 or d == 55 or d == 56 or d == 57 or d == 48 or d == 81 or d == 87 or d == 69 or d == 82 or d == 84 or d == 89 or d == 85 or d == 73 or d == 79 or d == 80 or d == 65 or d == 83 or d == 68 or d == 70 or d == 71 or d == 72 or d == 74 or d == 75 or d == 76 or d == 90 or d == 88 or d == 67 or d == 86 or d == 66 or d == 78 or d == 77 or
        d == 283 or d == 285 or d == 4355 or d == 16646 or d == 8456 or d == 780 or d == 2314 or d == 287 or d == 1291 or d == 781 or d == 270 or d == 8457 or d == 16647 or d == 286 or d == 284 or d == 260 or d == 258 or d == 6 or
        
        d == 257
    ){

        SendKeyWithF13(d);

    }



if( // Rest of NumRow.
       d == 60 or d == 95 or d == 64
    ){

        switch (d) {
        case 60:
            SendKeyWithF13(d -15);
            break;
        case 95:
            SendKeyWithF13(d - 34);
            break;
        case 64:
            SendKeyWithF13(d + 32);
            break;
        }
    }


if( // Rest of qwerty keys. Total 8
        d == 93 or d == 94 or d == 92 or d == 91 or d == 58 or d == 59 or d == 61 or d == 62
    ){

        switch (d) {
        case 93:
            SendKeyWithF13(d -2);
            break;
        case 94:
            SendKeyWithF13(d - 1);
            break;
        case 92:
            SendKeyWithF13(d);
            break;
        case 91:
            SendKeyWithF13(d - 32);
            break;
        case 58:
            SendKeyWithF13(d - 19);
            break;
        case 59:
            SendKeyWithF13(d - 15);
            break;
        case 61:
            SendKeyWithF13(d - 15);
            break;
        case 62:
            SendKeyWithF13(d - 15);
            break;
        }
    }




if( // 6 operator arrow key column
        d == 281 or d == 282 or d == 273 or d == 274 or d == 275 or d == 276    
    ){

        switch (d) {
        case 281:
            SendKeyWithF13(d -72);
            break;
        case 282:
            SendKeyWithF13(d - 70);
            break;
        case 273:
            SendKeyWithF13(d - 63);
            break;
        case 274:
            SendKeyWithF13(d - 61);
            break;
        case 275:
            SendKeyWithF13(d - 64);
            break;
        case 276:
            SendKeyWithF13(d - 62);
            break;
        }
    }




    if( // Arrow up left
        d == 279 or d == 277
    ){
        SendKeyWithF13(d - 61);
    }

        if( // Arrow down right
        d == 280 or d == 278
    ){
        SendKeyWithF13(d - 63);
    }




     if( // Numpad 1 to 9
        d == 33 or d == 34 or d == 35 or d == 36 or d == 37 or d == 38 or d == 39 or d == 40 or d == 41
    ){

        SendKeyWithF13(d + 192);

    }

     if( // Numpad rest 7 keys
        d == 32 or d == 47 or d == 46 or d == 45 or d == 42 or d == 44 or d == 43
    ){

        switch (d) {
        case 47:
            SendKeyWithF13(d + 173);
            break;
        case 46:
            SendKeyWithF13(d + 175);
            break;
        case 45:
            SendKeyWithF13(d + 177);
            break;
        case 32:
            SendKeyWithF13(d + 202);
            break;
        case 42:
            SendKeyWithF13(d + 193);
            break;
        case 44:
            SendKeyWithF13(d + 179);
            break;
        case 43:
            SendKeyWithF13(d + 181);
            break;
            
        }

        

    }

    

    if( // F1 to F12
        d == 353 or d == 354 or d == 355 or d == 356 or d == 357 or d == 358 or d == 359 or d == 360 or d == 361 or d == 362 or d == 363 or d == 364
    ){

        SendKeyWithF13(d - 159);

  }

  } // End of if()
} // End of loop()

void reboot() {
}


// Need to build a function that takes a char

// Pseudo code
// Taskes Char
// Presses F13
// Presses the char
// Delay for 10 ms
// Release All Keys

int SendKeyWithF13(int x){
    Keyboard.press(KEY_F13);
  Keyboard.press(x);
//  delay(9);
  Keyboard.releaseAll();
}
