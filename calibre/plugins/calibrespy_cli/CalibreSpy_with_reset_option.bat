@echo on

REM note:   option "--reset" means "reset the specified Library's CalibreSpy settings table to initial defaults"
calibre-debug -r "CalibreSpy" -- --"S:\Calibre\CalibreJobSpyTest3" --reset

REM wait 10 seconds to give time to see any error messages, then exit automatically.

ping 127.0.0.0 -n 10 > nul  

