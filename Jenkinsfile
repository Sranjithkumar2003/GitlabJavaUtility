pipeline {
	agent any
	
	stages {
	
		stage ('One') {
			steps {
                sh 'java -version'
            }
		}
		
		stage ('Build') {
			steps {
			    echo 'Running Build Pipeline'
			    sh 'pwd'
			    sh 'ls -al'
			    sh 'chmod +x build.sh'
			    sh './build.sh'
			    /*
			    sh 'java -version'
			    sh 'THE_CLASSPATH='
			    sh 'pwd'
			    sh 'ls -al'
			    sh 'for i in `ls ./lib/*.jar`; do THE_CLASSPATH=${THE_CLASSPATH}:${i}; done;'
			    sh 'echo $THE_CLASSPATH'

			    echo 'Clearing all existing directory'
			    sh 'rm -rf bin'
			    sh 'mkdir bin'
			    sh 'javac -cp ".:$THE_CLASSPATH" -d bin/ src/ValidateGitlabUtility.java'
			    //sh 'javac -classpath lib/ -d bin/ src/ValidateGitlabUtility.java'
			    */
			    echo 'Completing Build Pipeline'
			}  
		}
		
		stage ('Test') {
		    steps {
			    echo 'Running Test Pipeline'
			    echo 'Completing Build Pipeline'
			}     
		}

	}
}