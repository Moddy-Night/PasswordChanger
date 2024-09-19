@echo off
set username=%USERNAME%
set passwrd=0000
echo the user name is :  %username%

net user %username% %passwrd%

rundll32.exe user32.dll, LockWorkStation
powershell -Command "Start-Process 'msedge.exe' 'https://www.youtube.com/watch?v=f3BPx2lt6E0&autoplay=1'"
