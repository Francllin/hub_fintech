pipeline {
   agent {
     docker {
       image 'ruby'
     }
   }

   stages {
      stage('Build') {
         steps {
            echo 'Remove lock e install bundler'
            sh 'rm -f Gemfile.lock'
            sh 'bundle install'
         }
        }
        stage('Test') {
         steps {
            echo 'rodar os teste API'
            sh 'bundle exec  cucumber  -p uat'
            cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'reports', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
         }
        }
        stage('UAT') {
         steps {
            echo 'Waiting For User Acceptance'
            input(message: 'Go to Production?', ok: 'Yes')
         }
        }

        stage('prod') {
            steps {
                echo 'Webapp is Ready :D'
         }
        }
   }
}