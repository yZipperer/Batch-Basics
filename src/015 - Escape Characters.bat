@echo off

REM - Escape characters are a way of displaying certain symbols that otherwise wouldn't be displayed

REM - There may be cases where you need multiple percent signs

echo %80% of dentists recommend this

pause

REM - You may notice when the above line was run that something wierd happened
REM - This is because it is interpreting 80 as a variable, but you can get around this:

echo %%80%% of dentists recommend this

REM - The number 80 will now be displayed

pause