# Ansible-lint

[![wercker status](https://app.wercker.com/status/e28c7eee528cb11ee16f327643c76cab/m "wercker status")](https://app.wercker.com/project/bykey/e28c7eee528cb11ee16f327643c76cab)

A step to run ansible-lint on an Ansible playbook.

## Dependencies

This build-step depends on ansible / ansible-lint being installed, if it's missing, the buildstep wil fail. Please install those in your box wercker.yml

You can do this as follows -

```
build:
  steps:
    - pip-install
        requirements_file: ""
        packages_list: "ansible ansible-lint"
```

## Usage

```yaml

build:
  steps:
    - capgemini/ansible-lint:
        playbook: path/to/playbook.yml
        options: "-t TAGS"

```

Paths are relative to the top-level directory of the repo. ```playbook``` is required
and ```options``` is optional. The default for ```options``` is ```""```.

For a list of supported options see [https://github.com/willthames/ansible-lint#usage](https://github.com/willthames/ansible-lint#usage)

## License

The MIT License (MIT)
