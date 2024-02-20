#!/bin/bash

commit_msg_file="$1"
commit_msg=$(cat "$commit_msg_file")

# Regular expression to match Jira ticket pattern (e.g., ABC-123)
jira_pattern="[A-Z]+-[0-9]+"

if [[ ! $commit_msg =~ $jira_pattern ]]; then
  echo "Error: Please add a Jira ticket reference in the commit message." >&2
  exit 1
fi
