pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven"
    }
    environment {
        SETTINGS = '/var/lib/jenkins/settings.xml'
    }

    stages {
        stage('Pull') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'nexus', url:'https://github.com/wolender/nexus_task.git'
            }
        }
        stage('Build') {
            steps{
               sh 'mvn clean install -Dcheckstyle.skip=true'
            }
        }
        stage('Test'){
            steps{

                sh 'mvn test -Dcheckstyle.skip=true'
                

                junit 'target/surefire-reports/*.xml'
            }
        }
        stage('Deploy'){
            steps{
               sh 'mvn -s $SETTINGS deploy -Dcheckstyle.skip=true' 
            }
           
        }
    }
}
