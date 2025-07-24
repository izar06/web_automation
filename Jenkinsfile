pipeline {
    agent any

    environment {
        RESULTS_DIR = 'Results'
    }

    options {
        timestamps()
        // durabilityHint dihapus untuk menghindari sandbox error
    }

    stages {
        stage('Install Dependencies') {
            steps {
                echo '🔧 Installing Python dependencies...'
                sh 'python3 -m pip install --upgrade pip'
                sh 'python3 -m pip install -r requirements.txt'
            }
        }

        stage('Run Robot Tests') {
            steps {
                echo '🤖 Running Robot Framework tests...'
                sh 'python3 -m robot -d ${RESULTS_DIR} "Test Cases"'
            }
        }

        stage('Archive Robot Artifacts') {
            steps {
                echo '📦 Archiving test result files...'
                archiveArtifacts artifacts: "${RESULTS_DIR}/*.xml, ${RESULTS_DIR}/*.html", fingerprint: true
            }
        }

        stage('Publish HTML Report') {
            steps {
                echo '📊 Publishing Robot report...'
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

    post {
        always {
            echo '🧹 Pipeline completed (success or fail)'
        }
        success {
            echo '✅ Build SUCCESS!'
        }
        failure {
            echo '❌ Build FAILED!'
        }
    }
}
