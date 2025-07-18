pipeline {
    agent any

    environment {
        RESULTS_DIR = 'Results'
    }

    stages {
        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run Robot Tests') {
            steps {
                sh 'robot -d Results "Test Cases"'
            }
        }

        stage('Publish Robot Report') {
            steps {
                publishRobotResults outputPath: 'Results'
            }
        }

        stage('Publish HTML Report') {
            steps {
                publishHTML(target: [
                    reportName : 'Robot Report',
                    reportDir  : 'Results',
                    reportFiles: 'report.html',
                    keepAll    : true,
                    alwaysLinkToLastBuild: true
                ])
            }
        }
    }
}
