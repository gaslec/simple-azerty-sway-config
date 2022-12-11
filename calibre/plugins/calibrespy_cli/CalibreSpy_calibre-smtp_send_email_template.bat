echo on
REM ----------------------------------------------------------------------------------------------------------------
C:
cd "C:\Program Files\Calibre2"
REM ----------------------------------------------------------------------------------------------------------------
REM calibre-smtp --help
REM ----------------------------------------------------------------------------------------------------------------
REM Comments:  Book Path is passed through the command line via %1 in "--attachment=%1"
REM ----------------------------------------------------------------------------------------------------------------
echo "Book to Email as Attachment: " %1
REM ----------------------------------------------------------------------------------------------------------------
calibre-smtp --subject="CalibreSpy: Email of Book" --localhost=127.0.0.1 --timeout=120 --verbose --relay=SMTP_EMAIL_SERVER --port=SMTP_PORT --username=USERNAME --password=PASSWORD --encryption-method=METHOD --dont-verify-server-certificate=True --attachment=%1 FROM_EMAIL_ADDRESS TO_EMAIL_ADDRESS "Attached is an ebook."
REM ----------------------------------------------------------------------------------------------------------------
pause