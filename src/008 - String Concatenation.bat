@echo off

REM - Start by setting the variable 'string1'
set string1=First Part

REM - Set string to itself, then add what you want to add to the end
set string1=%string1% , Second Part

REM - Finally 'echo' the result
echo %string1%

pause

REM - Start by setting the variable 'string2'
set string2=Middle Part

REM - Stuff can also be added to the front, or both sides
set string2= First Part, %string2%, Last Part

REM - Finally 'echo' the result
echo %string2%

pause