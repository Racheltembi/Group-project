pipeline {
    agent any

    stages {
        stage('GIT_SRC_CLONE') {
            steps {
                git branch: 'master', url: https://github.com/Racheltembi/Group-project.git'
            }
        }

        stage('MAVEN_COMPILE_PACKAGES') {
            steps {
                script {
                    def mavenHome = tool name: "maven3.9.4", type: "maven"
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} clean package"
                }
            }
        }
        stage('UPLOAD ARTIFACTS') {
            steps {
                script {
                    def mavenHome = tool name: "maven3.9.4", type: "maven"
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} deploy"
                }
            }
        }
        stage('CODE COVERAGE') {
            steps {
                script {
                    def mavenHome = tool name: "maven3.9.4", type: "maven"
                    def mavenCMD = "${mavenHome}/bin/mvn"
                    sh "${mavenCMD} sonar:sonar"
                }
            }
        }
     }
 }
