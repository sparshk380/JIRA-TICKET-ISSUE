#!/bin/bash

# Regular expression to match Jira ticket references
JIRA_PATTERN="[A-Z]+-[0-9]+"

# Read the commit message from stdin
commit_message=$(cat $1)

# Check if the commit message contains a Jira ticket reference
if ! [[ $commit_message =~ $JIRA_PATTERN ]]; then
    echo "Error: Please add a Jira ticket reference in the commit message."
    exit 1
fi

# If a valid Jira ticket reference is found, allow the commit to proceed
exit 0
