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
              if (env.BRANCH_NAME == "master") {                                          
                    steps {
                    sh 'echo "Deploy"'
                    sh 'docker kill Petclinic ||true'
                    sh 'docker rm Petclinic ||true'
                    sh 'docker run -d -i -t -p 8080:8080 --name Petclinic petclinic'
                    }
            } else {                                   
                    steps {
                    sh 'echo "Artifact was built"'
                    }
            } 
            
        }
    }
}
