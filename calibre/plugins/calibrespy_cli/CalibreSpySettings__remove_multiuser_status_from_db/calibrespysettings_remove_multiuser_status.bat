echo on

REM Remove CalibreSpy Settings:  Multiuser 'Status' Lock Entries 

calibre-debug --exec-file "calibrespysettings_remove_multiuser_status.py"

REM wait 10 seconds to give time to see any error messages, then exit automatically.
ping 127.0.0.0 -n 10 > nul 