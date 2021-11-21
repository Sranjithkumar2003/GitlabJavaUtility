echo "Test"
java -version
THE_CLASSPATH=
echo $THE_CLASSPATH
pwd
ls -al
for i in `ls ./lib/*.jar`; do THE_CLASSPATH=${THE_CLASSPATH}:${i}; done;	
echo $THE_CLASSPATH
echo 'Clearing all existing directory'
rm -rf bin
mkdir bin
javac -Xlint:deprecation -Xlint:unchecked -cp ".:$THE_CLASSPATH" -d bin/ src/ValidateGitlabUtility.java
java -cp ".:$THE_CLASSPATH" org.testng.TestNG testng.xml