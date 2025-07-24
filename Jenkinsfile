pipeline {
    agent any

    environment {
        RESULTS_DIR = 'Results'
    }

    stages {
        stage('Install Dependencies') {
            steps {
                sh 'python3 -m pip install --upgrade pip'
                sh 'python3 -m pip install -r requirements.txt'
            }
        }

        stage('Run Robot Tests') {
            steps {
                sh 'python3 -m robot -d ${RESULTS_DIR} "Test Cases"'
            }
        }

        stage('Archive Robot Artifacts') {
            steps {
                archiveArtifacts artifacts: "${RESULTS_DIR}/*.xml, ${RESULTS_DIR}/*.html", fingerprint: true
            }
        }

        stage('Publish HTML Report') {
            steps {
                publishHTML(target: [
                    reportName : 'Robot Report',
                    reportDir  : "${RESULTS_DIR}",
                    reportFiles: 'report.html',
                    keepAll    : true,
                    alwaysLinkToLastBuild: true
                ])
            }
        }
    }
}
