pipeline {
    agent any
    triggers {
        githubPush()
    }


    environment {
         ENV_FILE = credentials('env')
    }



    stages {
        stage('Set up env') {
            steps {
                script {
                    sh 'python3 -m pip install --upgrade pip'
                    sh 'pip3 install -r requirement.txt'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh 'python3 -m pytest ./test_api/test_api_login.py'
                }
            }
        }
    }
}

