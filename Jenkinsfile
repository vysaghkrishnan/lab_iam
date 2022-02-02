pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'vysaghkrishnan', url: 'https://github.com/vysaghkrishnan/lab_sampleinstance.git']]])
        }
    }
        stage("Terraform init") {
            steps {
                sh ("terraform init");
            }
        }
        stage("Terraform Action") {
            steps {
                echo "terraform action from parameter is --> ${action}"
                sh ("terraform ${action} --auto-approve");
        
    }
  }
    }
}
