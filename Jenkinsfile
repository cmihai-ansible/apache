
node() {
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
		~/.local/bin/molecule -s kvm lint
		"""
	}

	stage ("molecule create") {
		sh """
		~/.local/bin/molecule -s kvm create
		"""
	}

	stage ("molecule converge") {
		sh """
		~/.local/bin/molecule -s kvm converge
		"""
	}

	stage ("molecule idempotence") {
		sh """
		~/.local/bin/molecule -s kvm idempotence
		"""
	}

	stage ("molecule verify") {
		sh """
		~/.local/bin/molecule -s kvm idempotence
		"""
	}

	stage ("molecule destroy") {
		sh """
		~/.local/bin/molecule -s kvm idempotence
		"""
	}
}
