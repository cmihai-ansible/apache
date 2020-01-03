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
        withEnv(['PATH+EXTRA=/usr/sbin:/usr/bin:/sbin:/bin:~/.local/bin']) {
           steps {
              sh """
              echo $PATH
              ls ~/.local/bin
              molecule test -s kvm
              """
           }
        }
      }
   }
}
