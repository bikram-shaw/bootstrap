node{
     
   
        stage('SCM Checkout')
        {
           
                git credentialsId: 'git_cred', url: 'https://github.com/bikram-shaw/bootstrap.git'
            
        }
        stage('Build Docker Image')
        {
       
                sh 'docker build -t biku8293/mariposa .'
            
        }
        stage('Push Docker Image')
        {
                withCredentials([string(credentialsId: 'docker_hub_pwd', variable: 'DockerHubPwd')]) {
     sh "docker login -u biku8293 -p ${DockerHubPwd}"
        }
               
                sh 'docker push biku8293/mariposa'
            
        }
        stage('Run Container On Staging Server')
        {
                
                sh 'docker rm -f mariposa'
                sh 'docker run -it -p 82:80 -d --name mariposa biku8293/mariposa'
                echo 'successfully deploy'
            
        }
         stage('Run Container On Production Server')
        {
                //sh 'sudo docker rm -f biku8293/mariposa'
                //sh 'sudo docker rm -f mariposa'
                //sh 'sudo docker run -it -p 82:80 -d --name mariposa biku8293/mariposa'
                echo 'successfully deploy'
            
        }
    
    
}