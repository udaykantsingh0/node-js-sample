pipeline {
    agent any

    stages {
        stage('pull code from github') {
            steps {
                script {
                    sh 'ssh root@172.31.45.118 "cd /root/project/node-js-sample && git pull"'
                }
            }
        }

        stage('docker build') {
            steps {
                script {
                    sh 'ssh root@172.31.45.118 "cd /root/project/node-js-sample && docker build -t myapp ."'
                }
            }
        }

        stage('run container') {
            steps {
                script {
                    sh 'ssh root@172.31.45.118 "cd /root/project/node-js-sample && docker-compose up -d "'
                }
            }
        }
    }
}