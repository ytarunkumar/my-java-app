pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from Git
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Build your Java application
                sh 'javac HelloWorld.java'
            }
        }

        stage('Test') {
            steps {
                // Add testing steps here
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
