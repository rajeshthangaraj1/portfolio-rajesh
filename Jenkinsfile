pipeline {
    agent any
    environment {
        CI = 'false'
        DEPLOY_PATH = "${params.DEPLOY_PATH}"
    }
    stages {
        stage('Build') {
            steps {
                echo "Npm packages are starting to install"
                sh "sudo npm install"
                sh "npm run build"
                echo "build  process completed"
            }
        }
        stage('DockerBuild') {
            steps {
                echo "Docker build started"
                //sh "docker build -t getting-started ."
                //sh "docker run -dp 3000:3000 getting-started"
                // build with no cache
                sh "docker-compose build --no-cache"
                sh "docker-compose up -d"
                echo "build  process completed"
            }
        }
    }
}