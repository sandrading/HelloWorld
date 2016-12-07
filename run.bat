@echo off
echo compile java files
echo 当前工作路径："%cd%"
rem 编译项目名称HelloWorld
set "PROJECET_NAME=HelloWorld"
cd C:\Users\aimee.mo\Documents\Github\%PROJECET_NAME%\
javac *.java
goto SUCCESS
:SUCCESS
echo 编译结束
echo 将%PROJECET_NAME%文件夹class files发布至Deploy目录
cd C:\Users\aimee.mo\Documents\Github\Deploy
set a="%time:~7%"
echo %a%
set path=%PROJECET_NAME%%a%
mkdir %path%
echo %path%
copy C:\Users\aimee.mo\Documents\Github\%PROJECET_NAME%\*.class C:\Users\aimee.mo\Documents\Github\Deploy\%path%\
pause
exit 
