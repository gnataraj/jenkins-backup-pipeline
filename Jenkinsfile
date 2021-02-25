pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('get-backup-script') {
      steps {
        sh '''git clone https://github.com/gnataraj/jenkins-backup-pipeline.git
'''
        sh '''cd jenkins-backup-pipeline
; sh  jenkins-backup.sh $JENKINS_HOME/*.xml $BACKUP_FILE'''
      }
    }

  }
  environment {
    JENKINS_HOME = '/home/jenkins'
    BACKUP_FILE = 'jenkins-bkp-` date +"%Y%m%d_%H%M%S"`.tar'
  }
}