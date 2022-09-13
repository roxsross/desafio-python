pipeline {
    agent any
    environment {
        REGISTRY = 'roxsross12'
        IMAGEN_NAME = 'python_jenkins'
        DOCKER_LOGIN = credentials('docker-hub')
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
              sh 'sudo docker build -t $REGISTRY/$IMAGEN_NAME:$TAG .'
              sh 'sudo docker images'

            }
        }
        // stage('Deploy') { 
        //     steps {
        //      sh 'sudo docker login --username=$DOCKER_HUB_LOGIN_USR --password=$DOCKER_HUB_LOGIN_PSW'
        //      sh 'sudo docker push $REGISTRY/$IMAGEN_NAME:$TAG' 
        //      echo "fin"
        //     }
        // }
    }
}