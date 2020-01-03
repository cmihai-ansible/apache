
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
		~/.local/bin/molecule lint -s kvm
		"""
	}

	stage ("molecule create") {
		sh """
		~/.local/bin/molecule create -s kvm
		"""
	}

	stage ("molecule converge") {
		sh """
		~/.local/bin/molecule converge -s kvm
		"""
	}

	stage ("molecule idempotence") {
		sh """
		~/.local/bin/molecule idempotence -s kvm
		"""
	}

	stage ("molecule verify") {
		sh """
		~/.local/bin/molecule verify -s kvm
		"""
	}

	stage ("molecule destroy") {
		sh """
		~/.local/bin/molecule destroy -s kvm
		"""
	}
}
