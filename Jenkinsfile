pipeline {
    agent any

    parameters {
        string(name: 'environment', defaultValue: 'default', description: 'Workspace/environment file to use for deployment')
        string(name: 'version', defaultValue: '', description: 'Version variable to pass to Terraform')
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    }
    
   
    environment {
	TF_WORKSPACE = 'dev' //Sets the Terraform Workspace
    	TF_IN_AUTOMATION = 'true'
	}
    stages {
        stage('Plan') {
            steps {
                script {
                    currentBuild.displayName = params.version
                }
                sh 'terraform init -input=false'
              
                sh "terraform plan -input=false"
                
            }
        }

        stage('Approval') {
            when {
                not {
                    equals expected: true, actual: params.autoApprove
                }
            }

            
        }

        stage('Apply') {
            steps {
                sh "terraform apply -input=false"
            }
        }
    }
}

   
