pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Stop Docker Maven') {
            steps {
                script {
                    sh 'docker compose stop'
                }
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t sensors-spring:latest .'
            }
        }

        stage('Run Docker Compose') {
            steps {
                sh 'docker compose up'
            }
        }
    }
}


