aptoma.aws-xray
=========

Installs AWS X-Ray daemon Agent

### Adding it to your Playbook

Add these lines to your role file:

```yaml
- src: git@github.com:aptoma/ansible-aws-xray
  scm: git
  version: 0.1.0
  name: aptoma.aws-xray
```

Run `ansible-galaxy install -r {your role file}` then add it to your roles list:

```yaml
  roles:
    - role: aptoma.aws-xray
```

### Testing

	vagrant up
