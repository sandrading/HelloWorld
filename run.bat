@echo off
echo compile java files
echo current path:"%cd%"
rem compile HiTest
set "PROJECET_NAME=HiTest"
cd "C:\Program Files (x86)\Jenkins\workspace\%PROJECET_NAME%\"
javac *.java
goto SUCCESS
:SUCCESS
echo compile done
echo copy %PROJECET_NAME% class files to Deploy
cd C:\Users\aimee.mo\Documents\Github\Deploy
set a="%time:~7%"
echo %a%
set path=%PROJECET_NAME%%a%
mkdir %path%
echo %path%
copy "C:\Program Files (x86)\Jenkins\workspace\%PROJECET_NAME%\*.class" C:\Users\aimee.mo\Documents\Github\Deploy\%path%\
pause
exit 
