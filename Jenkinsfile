pipeline {
  
    agent any
    tools{
        maven "M3"
    }

    stages {
        stage('Clone') {
            steps {
               git 'https://github.com/Alekhya-kandala/maven-web-app.git'
            }
        }
        stage('Build') {
            steps {
               sh 'mvn clean package'
            }
        }
        
        stage('DC'){
            steps {
               sh 'docker build -t alekhyaaa .'
            }
        }
         stage('DT'){
            steps {
               sh 'docker stop samplee'
               sh 'docker rm samplee'
               sh 'docker run -p 9090:8080 --name samplee alekhyaaa'
            }
        }
    }
}
