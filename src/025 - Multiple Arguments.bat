@echo off
goto :main

REM - There may be times where you need to pass multiple arguments

:list
    REM - You can access multiple values by incrementing the number '1' as seen below:
    echo This is a list: %~1, %~2, %~3
    echo.
    REM - You can also use an argument more than one time
    echo %~2 will be needed the most
goto :eof



:main
    echo This is the main function
    echo.
    REM - You can pass multiple arguments as seen below:
    call :list Milk Bread Eggs
    echo.
    pause
goto :eof

REM - When run, you will see that multiple arguments are passed to the list function
REM - Also discussed was how you reference an argument multiple times throughout a function