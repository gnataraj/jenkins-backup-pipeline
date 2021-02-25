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
        sh git clone https://github.com/gnataraj/jenkins-backup-pipeline.git
        }
      stage('backup-jenkins-cofiguration'{
        steps{
          echo "Running the backup script..."
          '''
           sh cd jenkins-backup-pipeline
           sh bakup-script.sh 
          '''
          sh 
        }
      }  
    }
  }
