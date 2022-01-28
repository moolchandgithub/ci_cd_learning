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

    stage('Test Firefox') {
      parallel {
        stage('Test Firefox') {
          steps {
            sh 'echo "Testing at Firefox"; exit 1'
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
