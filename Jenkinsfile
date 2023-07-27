pipeline {
    agent any
    tools {
        maven "Maven"
    }
    stages {
        stage('Clean') {
            steps {
                git 'https://github.com/Pprashu-63/Maven.git'
                 bat "mvn clean"
            }
            post {
                success {
                    echo 'Cleaning Project is Done'
                }
            }
        }
        stage('Compile') {
            steps {
                git 'https://github.com/Pprashu-63/Maven.git'
                 bat "mvn compile"
            }
            post {
                success {
                   echo 'Compiling Project is Done'
                }
            }
        }
        stage('Test') {
            steps {  
                git 'https://github.com/Pprashu-63/Maven.git'
                 bat "mvn -Dmaven.test.failure.ignore=true test"
            }
            post {
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'

                }
            }
        }
stage('Package') {
            steps {
                git 'https://github.com/Pprashu-63/Maven.git'
                 bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }

 

            post {
                success {
                 archiveArtifacts 'target/*.jar'
                }
            }
        }
    }
}
