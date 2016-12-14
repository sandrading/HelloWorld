@echo off
echo compile java files
echo current path:"%cd%"
rem compile free-style-1
set "PROJECET_NAME=free-style-1"
cd "C:\Users\sandra.ding\.jenkins\workspace\%PROJECET_NAME%\"
javac *.java
goto SUCCESS
:SUCCESS
echo compile done
echo copy %PROJECET_NAME% class files to Deploy
cd C:\Users\sandra.ding\Documents\deploy
set a="%time:~7%"
echo %a%
set path=%PROJECET_NAME%%a%
mkdir %path%
echo %path%
copy "C:\Users\sandra.ding\.jenkins\workspace\%PROJECET_NAME%\*.class" C:\Users\sandra.ding\Documents\deploy\%path%\
pause
exit 
