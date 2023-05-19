pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        // Build your PHP website Docker image
        sh 'docker build -t gms-app .'
      }
    }

    stage('Test') {
      steps {
        // Run tests or other necessary steps specific to your project
        // For example, running PHPUnit tests inside the Docker container
        sh 'docker run gms-app phpunit'
      }
    }

    // Add more stages as needed

    stage('Deploy') {
      steps {
        // Deploy your Dockerized PHP website
        // Add the necessary deployment steps here
      }
    }
  }

  // Define the steps for the branch
  // Replace 'your-branch-name' with the actual name of your branch
  // Add the necessary steps for this branch
  branch 'main' {
    steps {
      // Add the specific steps for this branch
      // For example, additional testing or deployment steps
    }
  }
}
