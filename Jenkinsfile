pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        // Build the Docker image
        script {
          docker.build('gym-app')
        }
      }
    }

    stage('Test') {
      steps {
        // Run tests or other necessary steps specific to your project
        // For example:
        sh 'docker run gym-app phpunit'
      }
    }

    stage('Deploy') {
      steps {
        // Stop and remove the existing containers
        sh 'docker-compose down'

        // Pull the latest changes from the Git repository
        sh 'git pull'

        // Rebuild and deploy the updated Dockerized PHP website
        sh 'docker-compose up -d'
      }
    }
  }
}
