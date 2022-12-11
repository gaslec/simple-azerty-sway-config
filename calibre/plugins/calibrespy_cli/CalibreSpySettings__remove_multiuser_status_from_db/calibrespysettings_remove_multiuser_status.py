# -*- coding: utf-8 -*-
import sqlite3
library_list = []
library_list.append('S:/Calibre/CalibreJobSpyTest1/metadata.db')               # use / and never \
library_list.append('S:/Calibre/CalibreJobSpyTest2/metadata.db')
library_list.append('S:/Calibre/CalibreJobSpyTest3/metadata.db')
library_list.append('S:/Calibre/CalibreJobSpyTest4/metadata.db')
library_list.append('S:/Calibre/CalibreJobSpyTest5/metadata.db')
library_list.append('S:/Calibre/CalibreMCS/metadata.db')
library_list.append('S:/Calibre/CalibreMainWorkbench/metadata.db')
library_list.append('S:/Calibre/CalibreMain/metadata.db')
library_list.append('S:/Calibre/CalibreZotero/metadata.db')

def process_library(library):
    try:
        conn = sqlite3.connect(library)
        c = conn.cursor()
        mysql = "DELETE FROM _calibrespy_settings WHERE prefkey LIKE 'CALIBRESPY_LAST_UPDATED%'   "         # Fixes multi-user locks...
        c.execute(mysql)
        mysql = "DELETE FROM _calibrespy_settings WHERE prefkey LIKE 'CALIBRESPY_CLI_SUBDIRECTORY%'   "   # Fixes an OS UserName path change...
        c.execute(mysql)
        conn.commit()
        conn.close()
        print("Process Complete")
    except Exception as e:
        print(str(e))
        try:
            conn.close()
        except:
            pass


for library in library_list:
    print("Processing library: ", library)
    process_library(library)
#END FOR



