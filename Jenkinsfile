pipeline {
    agent any

    stages {
        stage('Checkout GIT') {
            steps {
                echo 'Pulling ...'
                git branch:'main',
                url : 'https://github.com/medoussemaboussida/devops-workshop.git'
             
            }
        }
    }
node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def mvn = tool 'Default Maven';
    withSonarQubeEnv() {
      sh "${mvn}/bin/mvn clean verify sonar:sonar -Dsonar.projectKey=scanner -Dsonar.projectName='devops-workshop'"
    }
  }
}
}
