REPOSITORY=/home/ec2-user/app
cd $REPOSITORY

APP_NAME=action-test
JAR_NAME=$(ls $REPOSITORY/build/libs/ | grep 'SNAPSHOT.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/build/libs/$JAR_NAME

CURRENT_PID=$(pgrep -f $APP_NAME)

cp $REPOSITORY/application-env.properties $REPOSITORY/build/libs/

if [ -z $CURRENT_PID ]
then
  echo "> 현재 실행 중인 애플리케이션이 없습니다."
else
  echo "> kill -15 $CURRENT_PID"
  sudo kill -15 $CURRENT_PID
  sleep 5
fi

echo "> $JAR_PATH 배포"
nohup java -jar $JAR_JAR_PATH > /dev/null 2> /dev/null < /dev/null &
