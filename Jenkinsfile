pipeline {
   agent any

   environment {
      PATH = "~/.local/bin:$PATH"
   }

   stages {
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
            echo $PATH
            ls ~/.local/bin
            which molecule
            which yamllint
            molecule test -s kvm
            """
         }
      }
   }
}
