@Echo off
CD /D %~dp0

SET JAVA_HOME=C:\Progra~1\Java\jdk-11

dir /s /b src\*.java > sources.txt
%JAVA_HOME%\bin\javac.exe -d mods/test @sources.txt
del sources.txt

IF EXIST jre RMDIR /Q /S jre
%JAVA_HOME%\bin\jlink.exe --module-path "mods" --add-modules=test --output jre

@Pause