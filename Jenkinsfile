pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('get-backup-script') {
      steps {
        sh 'rm -rf jenkins-backup-pipeline'
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

    stage('artifacts') {
      steps {
        archiveArtifacts(artifacts: 'jenkins-backup-pipeline/*.tar', fingerprint: true)
      }
    }

  }
}