@echo off
goto :main

REM - In this lesson, it will be shown how to return a value from a function using local scope

:sum
setlocal
    echo Sum: number is %number%
REM - The line setting the variable was moved to be connected to the 'endlocal' command using an ampersand (&)
endlocal & set /a number=%number%+%~1
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

REM - Now, when you run the program, you will notice that within the 'main' function, the variable 'number' now has a value of 7

REM - The 'endlocal' command essentially deletes the information associated with variables used within the confines of 'setlocal' and 'endlocal'
REM - To get something passed this deletion, you can concatenate it to the end of the 'endlocal' command using an ampersand symbol
REM - This will perform the 'endlocal' command and then move onto setting the value of 'number'