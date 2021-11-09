@echo off
goto :main

REM - Scope is an important concept with any language, but the rules of scope are also different from language to language
REM - This lesson will show you what scope is

REM - Scope is basically what has access to a variable. It comes in two forms: local and global
REM - Local scope is where access to a variable is only available where it was defined or created
REM - Global scope is where any function or area of the script can have access to the variable

REM - By default, every variable created in batch is seen in a global scope, this concept was actually shown in the previous lesson how the variable was changed in multiple functions
REM - Also, as we saw in the first few lessons, by using the 'set' command we can see a list of all the variables and any new variables created will show up on that list

REM - The following is a demonstration of global scope:

REM - 'scope' is seen as a secondary function, which we may not want to have access to all variables
:scope
    REM - The variable 'x', which wasn't created in this function is displayed
    echo scope function: x is %x%
    REM - The variable 'y' is set and the value is displayed
    set y=10
    echo scope function: y is %y%
goto :eof

REM - 'main' is seen as the primary core of the script
:main
    REM - The variable 'x' is set and the value is displayed
    set x=5
    echo main function: x is %x%
    REM - The 'scope' function is called and then displays the value of 'y', which wasn't created in the current function
    call :scope
    echo main function: y is %y%

    pause
goto :eof

REM - As you can see, both functions have access to both variables, even though they were each created in different functions
REM - This is an example of global scope and how it pertains to batch scripting