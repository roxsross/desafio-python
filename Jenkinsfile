pipeline {
    agent any
    environment {
        REGISTRY = 'roxsross12'
        IMAGEN_NAME = 'python_jenkins'
        DOCKER_HUB_LOGIN = credentials('docker-hub')
        TAG = '1.0.0'
    }
    stages {
        stage('checkout github') { 
            steps {
               checkout scm 
            }
        }
        stage('build') { 
            steps {
              sh 'docker build -t $REGISTRY/$IMAGEN_NAME:$TAG .'
              sh 'docker images'

            }
        }
        stage('Deploy') { 
            steps {
             sh 'docker login --username=$DOCKER_HUB_LOGIN_USR --password=$DOCKER_HUB_LOGIN_PSW'
             sh 'docker push $REGISTRY/$IMAGEN_NAME:$TAG' 
             echo "fin"
            }
        }
    }
}