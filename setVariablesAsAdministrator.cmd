setx JAVA_HOME "C:/SDK/EXABEAT/jdk1.8.0_191" /M
setx M2_HOME "C:/SDK/EXABEAT/apache-maven-3.6.3" /M
setx HADOOP_HOME "C:/SDK/EXABEAT/hadoop-common-2.2.0-bin-master" /M
setx HADOOP_COMMON_HOME "C:/SDK/EXABEAT/hadoop-common-2.2.0-bin-master" /M
setx Path "C:/SDK/EXABEAT/apache-maven-3.6.3/bin;C:/SDK/EXABEAT/jdk1.8.0_191/bin;C:/SDK/EXABEAT/hadoop-common-2.2.0-bin-master/bin;%Path%" /M
PAUSE
@echo off
echo ##------------------
echo Comprobacion de valores seteados:
echo ##------------------
echo PATH=%PATH%
echo --------------------
echo HADOOP_HOME=%HADOOP_HOME%
echo --------------------
echo M2_HOME=%M2_HOME%
echo --------------------
echo JAVA_HOME=%JAVA_HOME%
echo .
echo ##------------------
echo Comprobacion de versiones:
echo ##------------------
java -version
echo --------------------
mvn -version
echo --------------------