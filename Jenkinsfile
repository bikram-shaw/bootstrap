node('staging'){
     
   
        stage('SCM Checkout')
        {
           
                git credentialsId: 'git_cred', url: 'https://github.com/bikram-shaw/bootstrap.git'
            
        }
        stage('Build Docker Image')
        {
       
                sh 'sudo docker build /home/ubuntu/jenkins/workspace/mariposa_pipeline -t biku8293/mariposa'
            
        }
        stage('Push Docker Image')
        {
                withCredentials([string(credentialsId: 'docker_hub_pwd', variable: 'DockerHubPwd')]) {
     sh "sudo docker login -u biku8293 -p ${DockerHubPwd}"
        }
               
                sh 'sudo docker push biku8293/mariposa'
            
        }
        stage('Run Container On Staging Server')
        {
                //sh 'sudo docker rm -f biku8293/mariposa'
                sh 'sudo docker rm -f $(sudo docker ps -a -q)'
                sh 'sudo docker run -it -p 80:80 -d biku8293/mariposa'
                echo 'successfully deploy'
            
        }
    
}