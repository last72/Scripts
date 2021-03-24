# iCue

Based on TaranVH's video and repo. I cannot use exactly same method as I want to have hot key (nubmer row and function row) from the main keyboard as well.

Ref: https://github.com/TaranVH/2nd-keyboard/tree/master/Corsair

I will use instead modifier keys + F13-F24 instead.

Possible combidations for modifier keys are 8 (ctrl, alt, shift).

Unused Function keys are 12 (F13 - F24). Total of possible 96 combinations.

Total keys in keyboards:
Functions keys: 12

Number row: 13
qwerty keys: 34
Modifier keys and others: 15

Arrow key column: 13
NumPad: 17

two special keys: 2

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

better version:

| Index | Corsiar Input   | Input Category           | Corsair Output | Corsair Output Modifier | AHK |
|-------|-----------------|--------------------------|----------------|-------------------------|-----|
| 1     | F1              | Functions keys           | F13            | None                    | ??  |
| 2     | F2              | Functions keys           | F13            | Ctrl                    | ??  |
| 3     | F3              | Functions keys           | F13            | Alt                     | ??  |
| 4     | F4              | Functions keys           | F13            | Ctrl + Alt              | ??  |
| 5     | F5              | Functions keys           | F13            | Shift                   | ??  |
| 6     | F6              | Functions keys           | F13            | Ctrl + Shift            | ??  |
| 7     | F7              | Functions keys           | F13            | Alt + Shift             | ??  |
| 8     | F8              | Functions keys           | F13            | Ctrl + Alt + Shift      | ??  |
| 9     | F9              | Functions keys           | F14            | None                    |     |
| 10    | F10             | Functions keys           | F14            | Ctrl                    |     |
| 11    | F11             | Functions keys           | F14            | Alt                     |     |
| 12    | F12             | Functions keys           | F14            | Ctrl + Alt              |     |
| 13    | `               | Number row               | F14            | Shift                   |     |
| 14    | 1               | Number row               | F14            | Ctrl + Shift            |     |
| 15    | 2               | Number row               | F14            | Alt + Shift             |     |
| 16    | 3               | Number row               | F14            | Ctrl + Alt + Shift      |     |
| 17    | 4               | Number row               | F15            | None                    |     |
| 18    | 5               | Number row               | F15            | Ctrl                    |     |
| 19    | 6               | Number row               | F15            | Alt                     |     |
| 20    | 7               | Number row               | F15            | Ctrl + Alt              |     |
| 21    | 8               | Number row               | F15            | Shift                   |     |
| 22    | 9               | Number row               | F15            | Ctrl + Shift            |     |
| 23    | 0               | Number row               | F15            | Alt + Shift             |     |
| 24    | -               | Number row               | F15            | Ctrl + Alt + Shift      |     |
| 25    | =               | Number row               | F16            | None                    |     |
| 26    | q               | qwerty keys              | F16            | Ctrl                    |     |
| 27    | w               | qwerty keys              | F16            | Alt                     |     |
| 28    | e               | qwerty keys              | F16            | Ctrl + Alt              |     |
| 29    | r               | qwerty keys              | F16            | Shift                   |     |
| 30    | t               | qwerty keys              | F16            | Ctrl + Shift            |     |
| 31    | y               | qwerty keys              | F16            | Alt + Shift             |     |
| 32    | u               | qwerty keys              | F16            | Ctrl + Alt + Shift      |     |
| 33    | i               | qwerty keys              | F17            | None                    |     |
| 34    | o               | qwerty keys              | F17            | Ctrl                    |     |
| 35    | p               | qwerty keys              | F17            | Alt                     |     |
| 36    | a               | qwerty keys              | F17            | Ctrl + Alt              |     |
| 37    | s               | qwerty keys              | F17            | Shift                   |     |
| 38    | d               | qwerty keys              | F17            | Ctrl + Shift            |     |
| 39    | f               | qwerty keys              | F17            | Alt + Shift             |     |
| 40    | g               | qwerty keys              | F17            | Ctrl + Alt + Shift      |     |
| 41    | h               | qwerty keys              | F18            | None                    |     |
| 42    | j               | qwerty keys              | F18            | Ctrl                    |     |
| 43    | k               | qwerty keys              | F18            | Alt                     |     |
| 44    | l               | qwerty keys              | F18            | Ctrl + Alt              |     |
| 45    | z               | qwerty keys              | F18            | Shift                   |     |
| 46    | x               | qwerty keys              | F18            | Ctrl + Shift            |     |
| 47    | c               | qwerty keys              | F18            | Alt + Shift             |     |
| 48    | v               | qwerty keys              | F18            | Ctrl + Alt + Shift      |     |
| 49    | b               | qwerty keys              | F19            | None                    |     |
| 50    | n               | qwerty keys              | F19            | Ctrl                    |     |
| 51    | m               | qwerty keys              | F19            | Alt                     |     |
| 52    | [               | qwerty keys              | F19            | Ctrl + Alt              |     |
| 53    | ]               | qwerty keys              | F19            | Shift                   |     |
| 54    | \               | qwerty keys              | F19            | Ctrl + Shift            |     |
| 55    | ;               | qwerty keys              | F19            | Alt + Shift             |     |
| 56    |                 | qwerty keys              | F19            | Ctrl + Alt + Shift      |     |
| 57    | ,               | qwerty keys              | F20            | None                    |     |
| 58    | .               | qwerty keys              | F20            | Ctrl                    |     |
| 59    | /               | qwerty keys              | F20            | Alt                     |     |
| 60    | escape          | Modifier keys and others | F20            | Ctrl + Alt              |     |
| 61    | tab             | Modifier keys and others | F20            | Shift                   |     |
| 62    | caps lock       | Modifier keys and others | F20            | Ctrl + Shift            |     |
| 63    | left shift      | Modifier keys and others | F20            | Alt + Shift             |     |
| 64    | left control    | Modifier keys and others | F20            | Ctrl + Alt + Shift      |     |
| 65    | windows key     | Modifier keys and others | F21            | None                    |     |
| 66    | left alt        | Modifier keys and others | F21            | Ctrl                    |     |
| 67    | spacebar        | Modifier keys and others | F21            | Alt                     |     |
| 68    | right alt       | Modifier keys and others | F21            | Ctrl + Alt              |     |
| 69    | fn              | Modifier keys and others | F21            | Shift                   |     |
| 70    | menu key        | Modifier keys and others | F21            | Ctrl + Shift            |     |
| 71    | righ control    | Modifier keys and others | F21            | Alt + Shift             |     |
| 72    | right shift     | Modifier keys and others | F21            | Ctrl + Alt + Shift      |     |
| 73    | enter           | Modifier keys and others | F22            | None                    |     |
| 74    | backspace       | Modifier keys and others | F22            | Ctrl                    |     |
| 75    | printscreen     | Arrow key column         | F22            | Alt                     |     |
| 76    | scrolllock      | Arrow key column         | F22            | Ctrl + Alt              |     |
| 77    | pausebreak      | Arrow key column         | F22            | Shift                   |     |
| 78    | insert          | Arrow key column         | F22            | Ctrl + Shift            |     |
| 79    | delete          | Arrow key column         | F22            | Alt + Shift             |     |
| 80    | home            | Arrow key column         | F22            | Ctrl + Alt + Shift      |     |
| 81    | end             | Arrow key column         | F23            | None                    |     |
| 82    | page up         | Arrow key column         | F23            | Ctrl                    |     |
| 83    | page down       | Arrow key column         | F23            | Alt                     |     |
| 84    | up              | Arrow key column         | F23            | Ctrl + Alt              |     |
| 85    | left            | Arrow key column         | F23            | Shift                   |     |
| 86    | down            | Arrow key column         | F23            | Ctrl + Shift            |     |
| 87    | right           | Arrow key column         | F23            | Alt + Shift             |     |
| 88    | numlock         | NumPad                   | F23            | Ctrl + Alt + Shift      |     |
| 89    | Numpad /        | NumPad                   | F24            | None                    |     |
| 90    | Numpad *        | NumPad                   | F24            | Ctrl                    |     |
| 91    | Numpad -        | NumPad                   | F24            | Alt                     |     |
| 92    | Numpad 0        | NumPad                   | F24            | Ctrl + Alt              |     |
| 93    | Numpad 1        | NumPad                   | F24            | Shift                   |     |
| 94    | Numpad 2        | NumPad                   | F24            | Ctrl + Shift            |     |
| 95    | Numpad 3        | NumPad                   | F24            | Alt + Shift             |     |
| 96    | Numpad 4        | NumPad                   | F24            | Ctrl + Alt + Shift      |     |
| 97    | Numpad 5        | NumPad                   | International1 | None                    |     |
| 98    | Numpad 6        | NumPad                   | International1 | Ctrl                    |     |
| 99    | Numpad 7        | NumPad                   | International1 | Alt                     |     |
| 100   | Numpad 8        | NumPad                   | International1 | Ctrl + Alt              |     |
| 101   | Numpad 9        | NumPad                   | International1 | Shift                   |     |
| 102   | Numpad .        | NumPad                   | International1 | Ctrl + Shift            |     |
| 103   | Numpad +        | NumPad                   | International1 | Alt + Shift             |     |
| 104   | Numpad enter    | NumPad                   | International1 | Ctrl + Alt + Shift      |     |
| 105   | Light key       | two special keys         | International2 | None                    |     |
| 106   | Winkey Lock key | two special keys         | International2 | Ctrl                    |     |
| 107   |                 |                          | International2 | Alt                     |     |
| 108   |                 |                          | International2 | Ctrl + Alt              |     |
| 109   |                 |                          | International2 | Shift                   |     |
| 110   |                 |                          | International2 | Ctrl + Shift            |     |
| 111   |                 |                          | International2 | Alt + Shift             |     |
| 112   |                 |                          | International2 | Ctrl + Alt + Shift      |     |


# how to

Install iCue and import profile
Download AHK script and run