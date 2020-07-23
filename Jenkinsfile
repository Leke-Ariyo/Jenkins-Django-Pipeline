pipeline {
    agent any
    stages {
         stage('Check current directory') {
              steps {
                  sh 'ls $WORKSPACE'
              }
         }
        //  stage('Setup Env'){
        //     steps {
        //         sh '''
        //             chmod +x envsetup.sh
        //             ./envsetup.sh
        //             '''
        //     }
        // }
    }
}