@echo off
goto :main

REM - If statements are a powerful tool in programming
REM - They are used to check whether a condition is met and then they will either skip or visit the code within the if statement block

:main
    REM - Sets the variable 'x'
    set /a x=1

    REM - Checks to see if 'x' has a value of 1
    if %x%==1 (
        echo Inside If Statement: X is equal to 1
    )

    pause
goto :eof

REM - After running the program, you will see that the line within the if statement block was run

REM - *Notice how there are two equal signs for the condition associated with the if statement
REM - '==' is associated with comparisons, while '=' is associated with assignment

:: - Now try changing the value of 'x' and run the program again
REM - You will notice that the code within the if statement is now not run
REM - This is because the value of 'x' does not equal 1, and therefore does not meet the condition needed to make the code run