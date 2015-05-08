#!/bin/bash
set +e

if [ ! -n "$WERCKER_ANSIBLE_LINT_PLAYBOOK" ];then
    fail 'Please specifiy the Ansible playbook.yml file'
fi

if [ -n "$WERCKER_ANSIBLE_LINT_OPTIONS" ]; then
  ANSIBLE_LINT_OPTIONS="${WERCKER_ANSIBLE_LINT_OPTIONS}"
else
  ANSIBLE_LINT_OPTIONS=""
fi

ansible-lint $ANSIBLE_LINT_OPTIONS $WERCKER_ANSIBLE_PLAYBOOK_PLAYBOOK
