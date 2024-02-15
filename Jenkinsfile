pipeline {
    agent {
        label 'node'
    }
    
    stages {
        stage('Clone Repository') {
            steps {
                dir('/root/node-app') {
                    git branch: 'dev', url: 'https://github.com/usernamessucks/node-js-sample.git'
                }
            }
        }
        
        stage('Build Docker Image') {
            steps {
                dir('/root/node-app') {
                    script {
                        sh 'docker build -t myapp .'
                    }
                }
            }
        }
        
        stage('Run Docker Compose') {
            steps {
                dir('/root/node-app') {
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}
