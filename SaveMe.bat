@echo off
echo *=========================================================
echo * SaveME
echo *  A simple batch program that makes one-to-one copies
echo *  of your files across any number of drives.
echo *                                                            
echo *  Created by Anthony DeStefano - 6/2015                      
echo *=========================================================
set timestamp=%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%
set soundfile=C:\SaveMe\happykids.wav
echo.
echo.
:: <EDIT> Log file
set logfile=C:\SaveMeData\LOG-SaveMe-%timestamp%.txt
echo   -LOGFILE: %logfile%
echo.
:: <EDIT> ADD SOURCE DIRECTORY TO COPY FROM
set source=C:\SaveMeData\*.*
echo   -USING MASTER: %source%
echo.
:: <EDIT> ADD BACKUP DESTINATION 1
set saveme1=F:\SaveMeData\*.*
echo   +TARGET DRIVES:
echo     1)%saveme1%
:: <EDIT> ADD BACKUP DESTINATION 2 
set saveme2=G:\SaveMeData\*.*
echo     2)%saveme2%
:: <EDIT> ADD BACKUP DESTINATION 3
set saveme3=H:\SaveMeData\*.*
echo     3)%saveme3%
:: <EDIT> ADD BACKUP DESTINATION 4 
set saveme4=I:\SaveMeData\*.*
echo     4)%saveme4%
echo.
echo   +READY TO SAVE!
echo.
PAUSE
echo.
echo. >> %logfile%
echo __________________________ >> %logfile%
echo %DATE% %TIME% >> %logfile%
echo -------------------------- >> %logfile%
echo   +SAVING:
xcopy %source% %saveme1% /E /D /Y >> %logfile%
echo     1)%saveme1% [SAVED!]
xcopy %source% %saveme2% /E /D /Y >> %logfile%
echo     2)%saveme2% [SAVED!]
xcopy %source% %saveme3% /E /D /Y >> %logfile%
echo     3)%saveme3% [SAVED!]
xcopy %source% %saveme4% /E /D /Y >> %logfile%
echo     4)%saveme4% [SAVED!]
echo __________________________ >> %logfile%
echo.
echo   +LOG: %logfile%
echo.
echo   +YOU ARE NOW SAVED!
echo.
start %soundfile%
::C:\SoundRecorderXP.exe -play -close -embedding C:\Users\Admin\Desktop\happykids.wav
Pause
echo.
type %logfile%
echo.
echo.
PAUSE