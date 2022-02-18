pipeline {
    agent any
	environment {
	     dockerhub_pwd=credentials('dockerhub_pwd_2')
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
            APP_NAME=`ls -lrt target/ | awk '{print $9}' | grep ".war" | awk -F"-" '{print $1}'`
            docker build . -t $APP_NAME:${BUILD_NUMBER}
            '''
            }
        }  
        stage('Pushing to docker hub') {
            steps {
            sh '''
	    APP_NAME=`ls -lrt target/ | awk '{print $9}' | grep ".war" | awk -F"-" '{print $1}'`
            docker tag $APP_NAME:${BUILD_NUMBER} mdabrar4devops/$APP_NAME:${BUILD_NUMBER}
            #echo $dockerhub_pwd | docker login -u mdabrar4devops --password-stdin
	    docker login -u mdabrar4devops -p $dockerhub_pwd
            docker push mdabrar4devops/$APP_NAME:${BUILD_NUMBER}			
            '''
	    }
}   
	 stage('Deploy to EKS Kubernetes cluster') {
	   steps {
           sh '''
	   #kubectl apply -f deployment.yaml
	   kubectl create deployment onlinebookstore --image onlinebookstore:${BUILD_NUMBER}
	   '''
    }
}
}
}
