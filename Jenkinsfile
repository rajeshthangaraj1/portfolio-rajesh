//pipeline script
pipeline {
    //agent Node
    agent any
    environment {
        CI = 'false'
        DEPLOY_PATH = "${params.DEPLOY_PATH}"
    }
    stages {
        //stage 1 : Build
        stage('Build') {
            steps {
                echo "Npm packages are starting to install"
                sh "sudo npm install"
                //sh "sudo chmod -R 777 ${WORKSPACE}/node_modules"
                sh "npm run build"
                echo "build  process completed"
            }
        }
        //stage 2 : Test
        //stage 3 : Deploy
        stage('Deploy') {
            steps {
                sh './scripts/deploy.sh'
                echo 'Docker success'
            }
        }
    }
}