pipeline {
  agent {
    node {
      label 'jenkins'
    }

  }
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
      }
    }

    stage('Test') {
      parallel {
        stage('Test Firefox') {
          steps {
            sh 'echo "Testing at Firefox"'
          }
        }

        stage('Test Edge') {
          steps {
            sh 'echo "Testing on Edge..."'
          }
        }

        stage('Test Chrome') {
          steps {
            sh 'echo "Testing on Chrome..."'
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying...'
      }
    }

  }
}
