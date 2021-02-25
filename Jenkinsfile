pipeline {
  agent any
  stages {
    stage('get-backup-script') {
      steps {
        sh 'rm jenkins-backup-pipeline'
        sh '''git clone https://github.com/gnataraj/jenkins-backup-pipeline.git
'''
      }
    }

    stage('run-backup') {
      steps {
        sh '''cd jenkins-backup-pipeline
sh bakup-script.sh'''
      }
    }

  }
}