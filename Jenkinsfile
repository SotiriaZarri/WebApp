pipeline {
    agent any

    tools{
        jdk 'Java20'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
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


