@echo off

REM - A few lessons ago, it was shown how to create a number variable with '/a'
REM - Just a sidenote, the official help section shows '/a' to be '/A' but it doesn't appear that the capitalization makes a difference

REM - This section will cover user input using the '/p' operator

set /p name=Enter your name: 

echo Your name is %name%!

REM - You will notice that the name the user entered will be displayed in the sentence

pause