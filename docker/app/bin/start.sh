#! /bin/sh


export LIBS=/app/libs
#export APP=com.egoebelbecker.jaegertutorial.TutorialApplication
#export APP=org.springframework.boot.loader.JarLauncher
export LOG_DIR=${APP_HOME}/logs
#export CLASSPATH=${CLASSPATH}:${LIBS}/*
${JAVA_HOME}/bin/java -enableassertions ${LOGBACKCFG} -jar ${LIBS}/JaegerTutorial-1.0-SNAPSHOT.jar

