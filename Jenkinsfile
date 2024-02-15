pipeline {
    agent {
        label 'node'
    }

    stages {
        stage('Git Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/usernamessucks/node-js-sample.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                  sh 'dockerbuild -t myapp .'
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
