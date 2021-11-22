@echo off
setlocal

set Dir=c:\users\%username%\tempwinget
if not exist %Dir% mkdir %Dir%
cd %Dir%
curl.exe -LJO https://github.com/bapt-git/BaptWinget/archive/main.zip


cd /d %~dp0
Call :UnZipFile "%Dir%\" "%Dir%\BaptWinget-main.zip"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

cd C:\Users\%username%\tempwinget\BaptWinget-main\

powershell -noprofile -command "Set-ExecutionPolicy bypass LocalMachine"
powershell -file %Dir%\BaptWinget-main\Default.ps1

echo ca en fait du temp de gagne...
pause
exit
