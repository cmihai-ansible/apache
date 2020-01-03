pipeline {
   agent any

   environment {
      PATH = "~/.local/bin:$PATH"
   }

   stages {
      stage('checkout') {
         steps {
            checkout scm
         }
      }

      stage('install tools') {
         steps {
            sh """
            pip3 install --user --upgrade molecule[docker] ansible yamllint ansible-lint
            """
         }
      }

      stage('test') {
         steps {
            sh """
            molecule test -s kvm
            """
         }
      }
   }
}
