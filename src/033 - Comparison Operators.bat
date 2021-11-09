@echo off
goto :main

REM - This section will go over alternative comparision operators 
REM - In the previous lesson, it was shown how to have an equal to comparision through '=='

REM - Here is a quick reference
REM - Section 1: 'EQU' - Equal
REM - Section 2: 'NEQ' - Not Equal
REM - Section 3: 'LSS' - Less than
REM - Section 4: 'LEQ' - Less than or equal to
REM - Section 5: 'GTR' - Greater than
REM - Section 6: 'GEQ' - Greather than or equal to

:main
    :: Equal to
    echo ==== Section 1 (EQU) ====
    set /a s1=1

    :: Checking to see if 's1' is equal to 1
    :: It is, so the if block will be run
    if %s1% EQU 1 (
        echo -- Inside if statement --
    )

    echo =========================

    echo.

    :: Not equal to
    echo ==== Section 2 (NEQ) ====
    set /a s2=2

    :: Checking to see if 's2' is not equal to 1
    :: It is not equal to 1, so the if block will be run
    if %s2% NEQ 1 (
        echo -- Inside if statement --
    )

    echo =========================

    echo.

    :: Less than
    echo ==== Section 3 (LSS) ====
    set /a s3=1

    :: Checking to see if 's3' is less than 2
    :: It is, so the if block will be run
    if %s3% LSS 2 (
        echo -- Inside if statement --
    )

    echo =========================

    echo.

    :: Less than or equal to
    echo ==== Section 4 (LEQ) ====
    set /a s4=2

    :: Checking to see if 's4' is less than or equal to 2
    :: It is, so if block will be run
    if %s4% LEQ 2 (
        echo -- Inside if statement --
    )

    echo =========================

    echo.

    :: Greater than
    echo ==== Section 5 (GTR) ====
    set /a s5=4

    :: Checking to see if 's5' is greater than 2
    :: It is, so the if block will be run
    if %s5% GTR 2 (
        echo -- Inside if statement --
    )

    echo =========================

    echo.

    :: Greater than or equal to
    echo ==== Section 6 (GEQ) ====
    set /a s6=4

    :: Checking to see if 's6' is greater than or equal to 4
    :: It is, so the if block will be run
    if %s6% GEQ 4 (
        echo -- Inside if statement --
    )

    echo =========================

    echo.

    pause
goto :eof

REM - Upon running, you will see that all 6 sections meet their condition and are run

REM - Please feel free to alter the values in each section, or create an if block of your own
REM - You can always reference the chart at the top of the program to reference all comparison operators