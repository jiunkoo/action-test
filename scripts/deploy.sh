REPOSITORY=/home/ec2-user/app
cd $REPOSITORY

APP_NAME=action-test #1
JAR_NAME=$(ls $REPOSITORY/build/libs/ | grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/build/libs/$JAR_NAME

CURRENT_PID=$(pgrep -f $APP_NAME)

if [ -z $CURRENT_PID ] #2
then
  echo "> 현재 실행 중인 애플리케이션이 없습니다."
else
  echo "> kill -15 $CURRENT_PID"
  sudo kill -15 $CURRENT_PID
  sleep 5
fi

echo "> $JAR_PATH 배포" #3
nohup java -jar /home/ec2-user/app/build/libs/action-test-1.0.jar --spring.config.location=/home/ec2-user/application.yml > /dev/null 2> /dev/null < /dev/null &
