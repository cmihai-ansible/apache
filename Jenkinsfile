pipeline {
    agent any

    environment {
        PATH = "/usr/local/bin:${env.PATH}"
    }

    stages {
        stage('Install tools') {
            steps {
                sh """
                python3 -m venv ~/env
                source ~/env/bin/activate
                pip3 install --upgrade pip
                pip3 install --upgrade molecule[docker] ansible yamllint ansible-lint python-vagrant
                """
            }
        }
        stage('Test') {
            steps {
                sh """
                source env/bin/activate
                echo $PATH
                echo $PWD
                ls -la
                which molecule
                molecule --debug test -s kvm
                """
            }
        }
    }
}
