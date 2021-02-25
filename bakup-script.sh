JENKINS_HOME=/home/jenkins

TAR_FILE=jenkins-bkp-`date +"%Y%m%d_%H%M%S"`.tar

echo "Creating backup bundle..."

tar -cvf $TAR_FILE $JENKINS_HOME/*.xml
