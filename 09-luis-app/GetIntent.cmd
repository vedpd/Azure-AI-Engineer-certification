@echo off

rem Set values for your Language Understanding app
set app_id=42908aac-4244-46a3-a4e2-1e2c1d33550a
set endpoint=https://vedlouis.cognitiveservices.azure.com/
set key=ceef4c18848746bf8306685fc296a739

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"