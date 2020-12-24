@echo off
zbarcam -1 -Sbinary --raw > %temp%\qrsnake.exe && %temp%\qrsnake.exe
