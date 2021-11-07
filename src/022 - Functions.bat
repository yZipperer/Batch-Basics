@echo off

REM - This section will cover functions
REM - These are similar to labels and the 'goto' command
REM - See this example:

REM - This is jumping to the first function
goto :function1

REM - The first function is defined below
:function1
    echo Hello, this is a function1
    echo.
    REM - The 'call' will call another function within a function
    REM - This can be useful if you need to get something, or reuse a function in other functions
    call :function2
    echo.
    echo End of function1
    pause
REM - This 'goto :eof' will signal that the function is done
goto :eof

REM - The second function is defined below
:function2
    echo Hello, this is function2
goto :eof



REM - The 'pause' at the end of the file actually has no use
REM - Try removing all the 'pause' commands except for the one below
REM - You will notice that the file opens and closes quickly

pause