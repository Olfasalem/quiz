pipeline {
    agent any

    environment {
        DOCKER_PATH = "C:\\Program Files\\Docker\\cli-plugins"
        PATH = "${DOCKER_PATH};C:/src/flutter/flutter_windows_3.7.7-stable/flutter/bin;${PATH}"
        DOCKERHUB_CREDENTIALS = credentials('DockerHub')
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    checkout scm
                }
            }
        }

        stage('Build and Dockerize') {
            steps {
                // Étape de construction du projet Flutter
                bat 'flutter pub get'
                bat 'flutter build apk --release'

                // Étape de construction de l'image Docker
                script {
                    // Assurez-vous que Docker est installé et accessible dans le chemin
                    bat "docker build -t flutter-img:${BUILD_ID} ."
                }
            }
        }
    }

    // Ajoutez d'autres directives du pipeline si nécessaire
    // ...
}
