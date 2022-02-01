@echo off
color 0F
mode con:cols=120 lines=250
Title Jio Downloader
echo                                                   Downloader by Archie
:start
@echo ------------------------------------------------------------------------------------------------------------------------
@echo                                                       Jio Movies                                            
@echo ------------------------------------------------------------------------------------------------------------------------
echo.
echo.
SET /P URL="[ENTER URL:] "
IF "%URL%" == "" (
      ECHO URL is empty. Please input the url....
      goto start
)

echo.
echo Decrypting stream and Downloading....
echo.
python Jio.pyc movie "%URL%"
echo.
pause