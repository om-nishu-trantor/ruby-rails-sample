pipeline {
     agent any
     
     triggers {
          pollSCM('H/10 * * * 1-5')
     }
     stages {
         
         stage('Install Infrastructure') {
             steps {
                    sh 'bash build.sh'
             }             
         }
         
         stage('checkout Project') {
             steps {
                checkout scm
                sh 'echo "checkout app"'
             }             
         }

         stage('Build Project') {
             steps {
                 sh 'echo "Start Build Project"'
             }
         }

         stage('Deploy - Develop') {
             when {
               branch "develop"
            }
             steps {
                 sh 'echo deploying $APP_NAME to Develop'
             }             
         }
          
         stage('Deploy - QA') {
             when {
               branch "qa"
            }
             steps {
                 sh 'echo deploying $APP_NAME to qa'
             }             
         }

         stage('Deploy - Production') {
             when {
               branch "master"
            }
             steps {
                  sh 'eb deploy'
             }             
         }
     }
     
     
     post {
          failure {
               mail to: 'dilkhush.soni@trantorinc.com',
                    subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
                    body: "Something is wrong with ${env.BUILD_URL}"
          }
          success {
               mail to: 'dilkhush.soni@trantorinc.com',
                    subject: "The pipeline ${currentBuild.fullDisplayName} completed successfully.",
                    body: "The pipeline ${currentBuild.fullDisplayName} completed successfully."
          }
     }


     environment {
        APP_NAME = 'my-app'
     }
}
