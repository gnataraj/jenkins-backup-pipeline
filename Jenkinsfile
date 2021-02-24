pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('get-backup-script') {
      steps {
        sh '''
echo "Removing the older version of backup script"
'''
        sh '''rm -rf jenkins-backup-script;
'''
        sh 'git clone https://github.com/gnataraj/jenkins-backup-script.git'
      }
    }

  }
  environment {
    JENKINS_HOME = '/home/jenkins'
  }
}