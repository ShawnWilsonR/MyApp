pipeline {
    agent any

    tools {
        maven "maven_3_9_9"
    }

    stages {
        stage('Build') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ShawnWilsonR/MyApp']])
                sh 'mvn clean install'
            }
        }
        stage('Create docker image') {
            steps {
                script {
                    sh 'docker build -t wilshacbz/myapp-jenkins-jar .'
                }
            }
        }
        stage('Push image to docker hub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                    sh 'docker login -u wilshacbz -p ${dockerhubpwd}'
                    sh 'docker push wilshacbz/myapp-jenkins-jar'
                    }
                }
            }
        }
    }
}