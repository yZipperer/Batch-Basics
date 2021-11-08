@echo off
goto :main

REM - There may be times where you want to pass arguments to a function and have something, like the sum, sent back
REM - There is not really a great way of returning information from a function as there is with other languages
REM - However, there is still a way to essentially get a value back from a function

REM - The 'printSum' function will get two values passed
:printSum
    REM - The two values will be added and the result will be set to a variable called 'sum'
    set /a sum=%~1+%~2
goto :eof

REM - The main function is where everything starts
:main
    echo === Main Function ===
    echo.
    REM - The 'printSum' function is called and two values are passed
    call :printSum 1 4
    REM - The variable 'sum' is referenced after the call
    REM - The 'printSum' function is called before and that function changes the value of the 'sum' variable
    echo The Sum is %sum%
    echo.
    pause
goto :eof

REM - There are other methods of doing this, however this is the easiest and most straight forward way I found of doing this

REM - With many functions, you may want the variable that holds the information to be returned to be of a similar name
REM - In this case, the variable that holds the value to be returned from 'printSum' may be named 'printSumResult' to avoid confusion