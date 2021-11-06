@echo off

REM - There may be numerous cases in which you have to add two numbers

REM - Below, there is a variable adding two numbers

set result=2+2
echo %result%

pause

REM - You will notice that you do not get '4', but instead '2+2'
REM - This is happening because the variable is taking what you set after it and storing its value
REM - 2+2 is seen as a string rather than a mathematical operation

REM - To fix this, you will need to use '/a' in front of the variable name

set /a result=2+2
echo %result%

pause

REM - The total will now be 4
REM - This can be extended to subtraction, multiplication, and division

set /a sum=2+2
set /a difference=2-2
set /a product=2*2
set /a quotient=2/2

echo Sum: %sum%, Difference: %difference%, Product: %product%, Quotient: %quotient%, 

pause