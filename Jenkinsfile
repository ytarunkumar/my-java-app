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
                sh 'javac HelloWorld.java'
            }
        }

        stage('Test') {
            steps {
                // Add testing steps here (e.g., using JUnit)
            }
        }

        stage('Dockerize') {
            steps {
                script {
                    def dockerImage = docker.build("my-java-app:${BUILD_NUMBER}")
                    dockerImage.push()
                }
            }
        }
    }

    post {
        success {
            // Add post-success actions here
        }
        failure {
            // Add post-failure actions here
        }
    }
}
