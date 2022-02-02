pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                checkout(checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'vysaghkrishnan', url: 'https://github.com/vysaghkrishnan/lab_sampleinstance.git']]]))
            }
        }
        stage("Terraform init") {
            steps {
                sh ("terraform init");
            }
        }
    }
}
