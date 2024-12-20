@echo off
echo Set WshShell = WScript.CreateObject("WScript.Shell") > "%temp%\bounce.vbs"
echo Set oShell = CreateObject("WScript.Shell") >> "%temp%\bounce.vbs"
echo screenWidth = oShell.ExpandEnvironmentStrings("%%USERPROFILE%%") >> "%temp%\bounce.vbs"
echo Do >> "%temp%\bounce.vbs"
echo x = (WshShell.AppActivate("Bouncing Window!")) >> "%temp%\bounce.vbs"
echo WshShell.SendKeys "%%{UP}" >> "%temp%\bounce.vbs"
echo WScript.Sleep 100 >> "%temp%\bounce.vbs"
echo Loop >> "%temp%\bounce.vbs"

start mshta "about:<html><head><title>Bouncing Window!</title></head><body><img src='https://steamuserimages-a.akamaihd.net/ugc/53577805182610596/DB7056CC06701AF81CEC02A83DD9399E1CD56528/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true' width='200' height='150'></body></html>"
start /min "%temp%\bounce.vbs"
ping -n 2 127.0.0.1 > nul
start bounce.bat
