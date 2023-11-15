pipeline {
    agent any
    environment {
        DOCKER_PATH = "C:\\Program Files\\Docker\\cli-plugins"
        PATH = "${DOCKER_PATH}:${PATH}"
        DOCKERHUB_CREDENTIALS = credentials('DockerHub')
       
    }
    stages {
        stage('Checkout') {
            steps {
                script {
                    checkout scm
                }
            }
        }}
}
