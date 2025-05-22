#!/bin/bash

################################################################################################################################
# Author: iTwili8-Manas (Original Author - Abhishek Veeramalla)
# Date: 22 May 2025
# Version: v0.0.1

# Script_Name: list_read_access_users.sh
# Description: This script uses the GitHub REST API to list all users with read (pull) access to a given repository.
# Requirements: GitHub Personal Access Token (with 'repo' scope), 'jq' (for JSON parsing), 'curl'

# Usage:
#	 ./list_read_access_users.sh <repo_owner> <repo_name>
#	 Make sure to export your GitHub credentials before running:
#		  export username=your_username
#		  export token=your_personal_access_token

# Example:
#	export username=iTwili8_Manas
#	export token=ghp_12345abcdeTokenHere
#	./list_read_access_users.sh iTwili8_Manas MyGitCollabRepo
###############################################################################################################################


# Base GitHub API endpoint
API_URL="https://api.github.com"

#Pull in credentials from environment variables (more secure than hardcoding)
USERNAME=$username
TOKEN=$token

# Capture command-line arguments
REPO_NAME=$1		# GitHub username or org that owns the repository
REPO_NAME=$2		# Repository name

# Function: Perform GET request to GitHub API
function github_api_get {
	local endpoint="$1"
	local url="${API_URL}/${endpoint}"

	# Use curl with basic authentication to hit GitHub's API
	curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function: List all users with read (pull) access
function list_users_with_read_access {
	local endpoint="repos/${REPO_NAME}/${REPO_NAME}/collaborators"

	# Fetch collaborators and filter only users who have read access
	collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

	# Output results
	if [[ -z "$collaborators" ]]; then
		echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
	else
		echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
		echo "$collaborators"
	fi
}

# Main Execution Flow
echo "Checking users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access


# END
