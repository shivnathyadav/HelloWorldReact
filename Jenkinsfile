pipeline{
    agent any
  
  stages{
    stage('Build Image'){
      steps{
                sh 'sudo docker build -t shivnathy/helloworld:latest .'
    }
    }
    stage('Push Docker Image'){
      steps{
      withCredentials([string(credentialsId: 'docker-pwd', variable: 'DockerHubPwd')]) {
         sh "sudo docker login -u shivnathy -p ${DockerHubPwd}"
      }
        sh 'sudo docker push shivnathy/helloworld:latest'
    }
    }
  }
 
}
