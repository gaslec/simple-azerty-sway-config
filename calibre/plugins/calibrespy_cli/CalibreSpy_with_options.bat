@echo on
calibre-debug -r "CalibreSpy"  -- --"S:\Calibre\CalibreJobSpyTest1" --ros

REM note:   option "--ros" means "read only settings".  Books are *always* RO.
REM calibre-debug -r "CalibreSpy" 
REM calibre-debug -r "CalibreSpy" -- --"S:\Calibre\CalibreJobSpyTest1"
REM calibre-debug -r "CalibreSpy" -- --"S:\Calibre\CalibreJobSpyTest1" --ros
REM calibre-debug -r "CalibreSpy" -- --ros
REM note:   option "--reset" means "reset the specified Library's CalibreSpy settings table to initial defaults"
REM calibre-debug -r "CalibreSpy" -- --"S:\Calibre\CalibreJobSpyTest1" --reset
REM wait 10 seconds to give time to see any error messages, then exit automatically.
ping 127.0.0.0 -n 10 > nul  

