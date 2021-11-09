@echo off
goto :main

REM - In a previous lesson, returning a value was discussed. With Local Variables this is a problem
REM - Try running the script as is and see what happens

:sum
setlocal
    echo Sum: number is %number%
    set /a number=%number%+%~1
    echo Sum: number is now %number%
endlocal
goto :eof

:main
setlocal
    set /a number=2
    echo Main Function: number is %number%
    call :sum 5
    echo Main Function: number is now  %number%

    pause
endlocal
goto: eof

REM - You will notice that 'number' is being created with a starting value of 2
REM - The 'sum' function is then called and passed a value of 5
REM - This value of 5 is then added to the 'number' variable
REM - Within the 'sum' function, the value of 'number' is 7 as it should be and as we want it to be
REM - The problem arises when we try to get it sent back to the 'main' function
REM - Instead of getting the value of 7, we are still stuck with the value of 2

REM - This will be fixed in the next lesson