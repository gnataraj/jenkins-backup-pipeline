JENKINS_HOME=/home/jenkins

TAR_FILE=$2

echo "Creating backup bundle..."

tar -cvf $TAR_FILE $JENKINS_HOME/*.xml
