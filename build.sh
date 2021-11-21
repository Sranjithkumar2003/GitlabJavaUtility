echo "Test"
java -version
THE_CLASSPATH=
echo $THE_CLASSPATH
pwd
ls -al
for i in `ls lib/*.jar`; do THE_CLASSPATH=${THE_CLASSPATH}:${i}; done;	
echo $THE_CLASSPATH
echo 'Clearing all existing directory'
rm -rf bin
mkdir bin
javac -Xlint:deprecation -Xlint:unchecked -cp ".:$THE_CLASSPATH" -d bin/ src/ValidateGitlabUtility.java
#javac -cp ".:$THE_CLASSPATH" -d bin/vars/ GitlabUtility.groovy
cp testng.xml bin/testng.xml
cp -R src/vars bin/
echo "Copied all files"
java -cp ".:$THE_CLASSPATH:bin/" org.testng.TestNG bin/testng.xml