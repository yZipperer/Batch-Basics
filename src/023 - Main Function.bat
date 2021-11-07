@echo off

REM - Many programming languages have a main function
REM - You can create something similar in your batch script
REM - This is not neccessary but can help the structure of your code

REM - You will call the main function at the start of each program, it is also common to have the main function at the bottom of the script
goto :main
REM - The other function you use will be above the main function

:message
    echo This is a message: Hello World!
goto :eof

:main
    echo This is the main function
    echo.
    call :message
    echo.
    pause
goto :eof

REM - The main function can be seen as the main piece of the script
REM - From here, other functions and processes will be called
REM - Think of it as the starting point of the program, and other functions will be called from here