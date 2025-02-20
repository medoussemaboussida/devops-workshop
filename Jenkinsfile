pipeline {
    agent any

    environment {
        MAVEN_HOME = tool 'Default Maven' // Assurez-vous que ce nom correspond à votre config Jenkins
    }

    stages {
        stage('Checkout GIT') {
            steps {
                echo 'Pulling ...'
                git branch: 'main', url: 'https://github.com/medoussemaboussida/devops-workshop.git'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') { // Mettre ici le nom correct du serveur SonarQube configuré
                    sh "${MAVEN_HOME}/bin/mvn clean verify sonar:sonar -Dsonar.projectKey=scanner -Dsonar.projectName='devops-workshop'"
                }
            }
        }
    }
}
