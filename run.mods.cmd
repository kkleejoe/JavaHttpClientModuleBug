@Echo off
CD /D %~dp0

SET JAVA_HOME=C:\Progra~1\Java\jdk-11
%JAVA_HOME%\bin\java --module-path "mods" -m test/test.HttpClientTest "https://www.google.com"
%JAVA_HOME%\bin\java --module-path "mods" -m test/test.HttpClientTest "https://bugreport.java.com/bugreport/"
%JAVA_HOME%\bin\java --module-path "mods" -m test/test.HttpClientTest "https://www.cloudflare.com"
@Pause