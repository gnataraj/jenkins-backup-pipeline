pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('get-backup-script') {
      steps {
        git(url: 'https://github.com/gnataraj/jenkins-backup-pipeline.git', branch: 'master')
      }
    }

  }
  environment {
    JENKINS_HOME = '/home/jenkins'
  }
}