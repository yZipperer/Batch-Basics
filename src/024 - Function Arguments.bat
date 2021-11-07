@echo off
goto :main

REM - This lesson will teach function arguments, and use the main structure from the last lesson
REM - An argument is something that is passed from one function to another.
REM - This can be very useful in that data is often needed to be transferred from one function to the next

:message
    REM - The argument passed from the main function to this function can be accessed as seen below:
    echo This is a message: %~1
goto :eof



:main
    echo This is the main function
    echo.
    REM - To pass arguments to other functions, provide them after the call as seen below:
    call :message Hello
    echo.
    pause
goto :eof

REM - When run, you will see that the 'Hello' passed from the main function to the message function will be displayed
REM - Passing arguments is an important concept that will be used throughout many of your scripts