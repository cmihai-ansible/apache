Role Name
=========

apache

Requirements
------------

- For RHEL, a Red Hat subscription or functional local repository.

Role Variables
--------------


Dependencies
------------

- For Red Hat, subscription-manager.

Example Playbook
----------------

    - hosts: servers
      roles:
         - role: apache

    - name: set tuned state
      import_role:
        name: apache
      vars:
        apache_remove_packages: true
        apache_enable_service: true
        apache_firewall_configure: true
        apache_firewall_rules:
          - service: service_name
      tags: apache

License
-------

MIT

Author Information
------------------

- [Mihai Criveti](https://www.linkedin.com/in/crivetimihai/)
