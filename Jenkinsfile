pipeline {
    agent any
    stages {
         stage('Check current directory') {
              steps {
                  sh 'ls $WORKSPACE'
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
        stage('Setup gunicorn service'){
            steps {
                sh '''
                    chmod +x startup.sh
                    ./startup.sh
                    '''
            }
        }
    }
}