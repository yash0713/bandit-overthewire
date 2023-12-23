rem Set the initial value for X
set "X=4"

rem Loop to find the next available file name
:findNextFileName
set fileName="bandit%X%.txt"

rem Check if the file already exists
if exist "%fileName%" (
    rem Increment X and try again
    set /a X+=1
    goto findNextFileName
) else (
    rem Create an empty text file
    type nul > "%fileName%"
    echo File "%fileName%" created.
)

endlocal