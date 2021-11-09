@echo off
goto :main

REM - Using the same code from the last lesson, we can show inheritance
REM - Inheritance is an important concept with any language. Just as in the real world, in the programming world inheritance is passing something along

:scope
setlocal
    echo scope function: x is %x%
    set y=10
    echo scope function: y is %y%
endlocal
goto :eof

:main
setlocal
    set x=5
    echo main function: x is %x%
    REM - By calling 'scope' within 'main', we are also passing any variables local to 'main' along so that 'scope' can also access them
    call :scope
    echo main function: y is %y%

    pause
endlocal
goto :eof

REM - After running, you will see that the 'main' function only has access to 'x' and the 'scope' function has access to both 'x' and 'y'

REM - The variable 'x' was created in 'main' and due to inheritance, it was passed to 'scope' when we called it within 'main'
REM - This may seem unimportant, but it can be a very useful concept in accessing variables