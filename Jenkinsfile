node('staging'){
     
   
        stage('SCM Checkout')
        {
           
                git credentialsId: 'git_cred', url: 'https://github.com/bikram-shaw/bootstrap.git'
            
        }
        stage('Build Website')
        {
       
                sh 'sudo docker build  /home/ubuntu/jenkins/workspace/mariposa_pipeline -t biku8293/mariposa'
            
        }
        stage('Deploy Website')
        {
            sh 'sudo docker rmi -f biku8293/mariposa'
                sh 'sudo docker run -it -p 80:80 -d biku8293/mariposa'
            
        }
    
}