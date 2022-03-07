#!/bin/bash

export JAVA_OPTS="$JAVA_OPTS \
  -javaagent:$APP_HOME/agent.jar"

java $JAVA_OPTS -jar $APP_HOME/$APP_NAME.jar