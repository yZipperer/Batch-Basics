@echo off

REM - There may be a time where you need to know the remainder of a division problem
REM - you can easily do this with the modulus operator '%'

set /a answer=12%3
echo %answer%

REM - You will notice that a 12 is printed out, but 12 is not the remainder
REM - If you type this into the command prompt, you will get the right answer, but not in a script

pause

REM - Here is what you need to do to fix this:

set /a answer=12%%5
echo %answer%

REM - Here, you will see that there is a remainder of 2

REM - To find a remainder in a batch script, you will need to use '%%', this goes back to the section on escape characters

pause