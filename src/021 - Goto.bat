@echo off

REM - This lesson will cover 'goto'
REM - This can be useful for jumping around the script to different parts

echo This line is not in a label

REM - You will notice that 'goto :end' has been added

goto :end

REM - This will skip the start label and jump to the end label

:start

echo This line is in the 'start' label

:end

echo This line is in the 'end' label

REM - Labels coupled with 'goto' can be very useful for skipping parts of your script, or going back to a certain section

pause