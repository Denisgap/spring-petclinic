pipeline { 
    agent any 
   
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') { 
            steps { 
                sh 'cd /var/lib/jenkins/workspace/BA-Thesis/PetClinic'
                sh './mvnw -Dmaven.test.skip=true package'
                sh 'docker build -t petclinic .'
               
            }
        }
        stage('Test'){
            steps {
                sh 'echo "test"'
                
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploy"'
            }
        }
    }
}
