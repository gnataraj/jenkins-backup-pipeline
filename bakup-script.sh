JENKINS_HOME=$1

TAR_FILE=$2

echo "Creating backup bundle..."

tar -cvf $TAR_FILE $JENKINS_HOME/*.xml
