pipeline {
    agent any
    stages {
         stage('Check current directory') {
              steps {
                  sh 'pwd'
              }
         }
         stage('Setup Env'){
            steps {
                sh '''
                    chmod +x envsetup.sh
                    ./envsetup.sh
                    '''
            }
        }
    }
}