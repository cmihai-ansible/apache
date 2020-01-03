pipeline {
    agent any

    environment {
        PATH = "~/.local/bin:/usr/local/bin:${env.PATH}"
    }

    stages {
        stage('Install tools') {
            steps {
                sh """
                pip3 install --user --upgrade molecule[docker] ansible yamllint ansible-lint
                """
            }
        }
        stage('Test') {
            steps {
                sh """
                echo $PATH
                echo $PWD
                ls -la
                which molecule
                molecule test -s kvm --debug
                """
            }
        }
    }
}
