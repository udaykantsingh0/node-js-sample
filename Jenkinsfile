pipeline {
    agent {
        label 'node'
    }

    stages {
        stage('Git Clone') {
            steps {
                git branch: 'dev2', url: 'https://github.com/usernamessucks/node-js-sample.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                  sh 'docker build -t myapp .'
                }
            }
        }

        stage('Docker Compose') {
            steps {
                script {
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}
