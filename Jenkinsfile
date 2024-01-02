pipeline {
    agent any
    triggers {
        githubPush()
    }


    environment {
         ENV = credentials('env')
    }



    stages {
        stage('Set up env') {
            steps {
                script {
                    sh 'python3 -m pip install --upgrade pip'
                    sh 'pip3 install -r requirements.txt'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh 'python3 -m pytest -s -v'
                }
            }
        }
    }
}

