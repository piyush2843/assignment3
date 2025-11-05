pipeline {
    agent any

    stages {
        stage('Clone Repository') {
             steps {
                git branch: 'main', url: 'https://github.com/piyush2843/assignment3.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("java-hello-world:latest")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("java-hello-world:latest").run()
                }
            }
        }
    }
}
