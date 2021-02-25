pipeline {
  agent {
    node {
      label 'master'
    }
      parameters {
        string(name: 'JENKINS_HOME', defaultValue: '/home/jenkins', description: 'Jenkins home dir?')
        string(name: 'BACKUP_FILE', defaultValue: 'jenkins-bkp-` date +"%Y%m%d_%H%M%S"`.tar', description: 'Format for jenkins backupfile)

    }

  }
  stages {
    stage('get-backup-script') {
      steps {
        sh 'rm -rf jenkins-backup-pipeline'
        sh '''git clone https://github.com/gnataraj/jenkins-backup-pipeline.git
'''
        sh '''cd jenkins-backup-pipeline
; sh bakup-script.sh ${JENKINS_HOME}/*.xml ${BACKUP_FILE}'''
      }
    }

  }
  
}
