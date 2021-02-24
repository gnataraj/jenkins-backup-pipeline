pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('get-backup-script') {
      steps {
        sh 'git clone https://github.com/gnataraj/jenkins-backup-script.git'
      }
    }

  }
  environment {
    JENKINS_HOME = '/home/jenkins'
  }
}