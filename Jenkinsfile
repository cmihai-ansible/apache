environment {
  PATH = "~/.local/bin:$PATH"
}

node() {
  stage ("Checkout scm") {
		checkout scm
	}

	stage ("molecule lint") {
		sh """
    pip3 install --user --upgrade molecule
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
