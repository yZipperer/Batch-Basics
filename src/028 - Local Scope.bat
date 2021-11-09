@echo off
goto :main

REM - This lesson will demonstrate how to create a local scope using most of the same code from the last lesson
REM - To create a local scope, you want the variables to only be visible in certain functions
REM - This can be implemented through the 'setlocal' and 'endlocal' commands

:scope
REM - The 'setlocal' command initiates a localized scope
setlocal
    echo scope function: x is %x%
    set y=10
    echo scope function: y is %y%
REM - The 'endlocal' command closes the localized scope
endlocal
goto :eof

:main
REM - The 'setlocal' command initiates a localized scope
setlocal
    set x=5
    echo main function: x is %x%
    call :scope
    echo main function: y is %y%

    pause
REM - The 'endlocal' command closes the localized scope
endlocal
goto :eof

REM - After running, you will see that the 'main' function only has access to 'x' and the 'scope' function has access to both 'x' and 'y'
REM - This is due to inheritance, but that will be explained in the next lesson

REM - For now, you can see how once a variable was created in a function, it was specific to that function and couldn't be used in a different function