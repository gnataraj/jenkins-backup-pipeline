pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('get-backup-script') {
      steps {
        git 'https://github.com/gnataraj/jenkins-backup-pipeline.git'
      }
    }

  }
  environment {
    JENKINS_HOME = '/home/jenkins'
  }
}