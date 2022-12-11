@echo on

REM note:  option "--prefilter" which is used to allow pre-filtering of books for both performance and ease-of-use.
REM calibre-debug -r "CalibreSpy" -- --"S:\Calibre\CalibreJobSpyTest1" --prefilter
calibre-debug -r "CalibreSpy" -- --prefilter

REM wait 10 seconds to give time to see any error messages, then exit automatically.

REM ping 127.0.0.0 -n 10 > nul  

pause

