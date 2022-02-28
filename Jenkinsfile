pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                git branch: 'main', credentialsId: 'GITHUB', url: 'git@github.com:vysaghkrishnan/lab_sampleinstance.git'
                echo 'Hello World'
                
       sh 'terraform init'
        sh 'terraform validate'
        sh 'terraform plan'
        sh 'terraform apply --var-file=dev.tfvars'
      }
    }
    
                       
                }
            }
        
    

