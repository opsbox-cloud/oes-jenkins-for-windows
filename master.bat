@echo off

set ROOT_DIR=%cd%
echo '--//INFO: start jenkins master...'

call %ROOT_DIR%\config.bat

:: 1. create JENKINS_HOME 
:: 2. download jenkins.war
:: 3. start jenkins.war

set JENKINS_WAR=%JENKINS_HOME%\jenkins.war

IF EXIST %ROOT_DIR%\lib\jenkins.war (
    set JENKINS_WAR=%ROOT_DIR%\lib\jenkins.war
) ELSE (
  if NOT EXIST %JENKINS_WAR% (
    MD %JENKINS_HOME%
    echo "https://get.jenkins.io/war-stable/%JENKINS_LTS_VERSION%/jenkins.war"
    curl.exe -o %JENKINS_HOME%\jenkins.war -L "https://get.jenkins.io/war-stable/%JENKINS_LTS_VERSION%/jenkins.war"
  )
)

java -jar %JENKINS_WAR%

pause