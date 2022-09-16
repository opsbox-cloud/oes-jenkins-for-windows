@echo off

set ROOT_DIR=%cd%
echo '--//INFO: start jenkins agent...'

call %ROOT_DIR%\config.bat

set LIB_DIR=%ROOT_DIR%\lib

java -jar %LIB_DIR%\swarm-client-3.36.jar ^
  -workDir %JENKINS_HOME% ^
  -fsroot %JENKINS_HOME% ^
  -mode %NODE_MODE% ^
  -url %JENKINS_URL% ^
  -username %JENKINS_USR% ^
  -password %JENKINS_PSW% ^
  -name %NODE_NAME% ^
  -labels %NODE_LABLES% ^
  -executors %NODE_EXECUTORS%

pause