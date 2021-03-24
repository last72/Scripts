# iCue

Based on TaranVH's video and repo. I cannot use exactly same method as I want to have hot key (nubmer row and function row) from the main keyboard as well.

I will use instead modifier keys + F13-F24 instead.

Possible combidations for modifier keys are 8 (ctrl, alt, shift).

Unused Function keys are 12 (F13 - F24). Total of possible 96 combinations.

Total keys in keyboards:
Functions keys: 12

Number row: 13
qwerty keys: 34
Modifier keys and others: 17

Arrow key column: 13
NumPad: 17

SUM: 106

There are some unused keys like language keys. can be used maybe - good

or use F24 method on alplabets as I didn't put hotkey macro on those. - Nahh it will be messy

or use lua macro method: writes a file to a local drive that indicates which button was pressed. - Let's not access local drive if possible


Corsiar International1-5 keys seems to work fine. It is 40 extra macros


I do not have a keyboard with F13-24 so i need to edit the xml file and import back

I'm making excel file like this

| Index | Corsiar Input | Corsair Output | Corsair Output Modifier | AHK |
|-------|---------------|----------------|-------------------------|-----|
| 1     | F1            | F13            | None                    | ??  |
| 2     | F2            | F13            | Ctrl                    | ??  |
| 3     | F3            | F13            | Alt                     | ??  |
| 4     | F4            | F13            | Ctrl + Alt              | ??  |
| 5     | F5            | F13            | Shift                   | ??  |
| 6     | F6            | F13            | Ctrl + Shift            | ??  |
| 7     | F7            | F13            | Alt + Shift             | ??  |
| 8     | F8            | F13            | Ctrl + Alt + Shift      | ??  |

Ref: https://github.com/TaranVH/2nd-keyboard/tree/master/Corsair