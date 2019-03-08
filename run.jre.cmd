@Echo off
CD /D %~dp0

jre\bin\java.exe -m test/test.HttpClientTest "https://www.google.com"
jre\bin\java.exe -m test/test.HttpClientTest "https://bugreport.java.com/bugreport/"
jre\bin\java.exe -m test/test.HttpClientTest "https://www.cloudflare.com"
@Pause