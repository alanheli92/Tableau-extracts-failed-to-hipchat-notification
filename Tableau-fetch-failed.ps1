##Set the path were is the psql aplication
##Configur the set-lacation to your tableau installation path
Set-Location 'C:\Program Files\Tableau\Tableau Server\9.1\pgsql\bin\';

##Execute the query to get the failed extracts
$env:PGPASSWORD = 'YourDBPasswor';.\psql --% -U YourDBUser  -w -d workgroup -p 8060 -A -F" " -t -f C:\TableauHipchatConfig\tableauquery.sql -o C:\TableauHipchatConfig\output\output
Start-Sleep -s 60

##Set the location were the python script and querys output file is
Set-Location 'C:\TableauHipchatConfig\output';

##execute the python script to sent the query's out to the hipchat
##You need to config the windows PATH varible with the path were is the python.exe flie
python sentHipchatTableau.py