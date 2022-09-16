@echo off

:: global config
set ROOT_DIR=%cd%

set TOOLS_DIR=%ROOT_DIR%\tools

:: java 
set JAVA_HOME=%TOOLS_DIR%\jdk
set PATH=%JAVA_HOME%\bin;%PATH%

:: curl
set CURL_HOME=%TOOLS_DIR%\wget
set PATH=%CURL_HOME%\bin;%PATH%

:: master config
set JENKINS_HOME=%ROOT_DIR%\userData
set JENKINS_LTS_VERSION=2.361.1

:: agent config
set JENKINS_URL=https://jenkins.opsbox.dev
set JENKINS_USR=admin
set JENKINS_PSW=jenkins

set NODE_NAME=windows10
set NODE_LABLES=windows10 -labels win10 -labels vs2017
set NODE_MODE=exclusive
set NODE_EXECUTORS=2