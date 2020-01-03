
node() {
  environment {
  PATH = "~/.local/bin:$PATH"
  }

  stage ("Checkout scm") {
		checkout scm
	}

	stage ("install ansible and molecule") {
		sh """
    pip3 install --user --upgrade molecule ansible
		"""
	}

	stage ("molecule lint") {
		sh """
		molecule -s kvm lint
		"""
	}

	stage ("molecule create") {
		sh """
		molecule -s kvm create
		"""
	}

	stage ("molecule converge") {
		sh """
		molecule -s kvm converge
		"""
	}

	stage ("molecule idempotence") {
		sh """
		molecule -s kvm idempotence
		"""
	}

	stage ("molecule verify") {
		sh """
		molecule -s kvm idempotence
		"""
	}

	stage ("molecule destroy") {
		sh """
		molecule -s kvm idempotence
		"""
	}
}
