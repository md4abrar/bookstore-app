pipeline {
    agent any
	environment {
	     dockerhub_pwd=credentials('dockerhub_pwd')
  }
    stages {
        stage('Building the app') {
            steps {
            sh '''
            echo Building the maven application
            mvn clean install
            '''
        }
        }
        stage('Containerizing the app') {
            steps {
            sh '''
            echo Creating the image on top of tomcat
            APP_NAME=`ls -lrt target/ | awk '{print $9}' | grep ".war" | awk -F"." '{print $1}'`
            docker build . -t $APP_NAME:${BUILD_NUMBER}
            '''
            }
        }  
        stage('Pushing to docker hub') {
            steps {
            sh 'docker tag $APP_NAME:${BUILD_NUMBER} mdabrar4devops/$APP_NAME:${BUILD_NUMBER}'
            sh 'echo $dockerhub_pwd | docker login -u mdabrar4devops --password-stdin'
            sh 'docker push mdabrar4devops/$APP_NAME:${BUILD_NUMBER}'			
    }        
}
    }
}
		
