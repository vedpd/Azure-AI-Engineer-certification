@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=6e8383a2-d67d-42a9-8e4e-ae938127b1a0
set azure_storage_account=knwlgstorgacc
set azure_storage_key=UbDkulIfF1CKu6DCn102f1/21oNEhWhFftDPkJsGiAgGY7fEjQDG3uey9xNm03LFT1Q4EfL3iN49dkxHGJmjLQ==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
