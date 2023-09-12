pipeline {
    agent any // You can specify a specific agent here, e.g., 'node { label "my-node" }'

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from Git repository
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Compile the Java application
                sh 'javac HelloWorld.java'
            }
        }

        stage('Test') {
            steps {
                // Run tests if you have them
                sh 'echo "Running tests"'
                // You can add your test commands here
            }
        }

        stage('Package') {
            steps {
                // Package the Java application (e.g., create a JAR file)
                sh 'jar cvf myapp.jar *.class'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy the Java application (e.g., copy to a deployment location)
                sh 'echo "Deploying application"'
                // You can add deployment steps here
            }
        }
    }

    post {
        success {
            // Actions to perform on pipeline success
            sh 'echo "Build successful"'
            // You can trigger notifications, deployments, etc.
        }

        failure {
            // Actions to perform on pipeline failure
            sh 'echo "Build failed"'
            // You can trigger notifications or cleanup actions
        }
    }
}
