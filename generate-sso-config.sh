#!/bin/bash
#
# This script generates and writes AWS SSO configuration to the ~/.aws/config file.
# It checks for required environment variables and creates the configuration.
# This script will OVERWRITE the entire ~/.aws/config file with only the generated SSO profile.
# Any existing AWS configurations or profiles in that file will be DELETED.
#

set -euo pipefail

# Function to check if an environment variable is set
# Arguments:
#   $1: The name of the environment variable to check
function check_env_var() {
  local var_name="$1"
  if [[ -z "${!var_name}" ]]; then
    echo "Error: Environment variable '${var_name}' is not set." >&2
    exit 1
  fi
}

# Main function
function main() {
  # Check for required environment variables
  check_env_var "AWS_PROFILE_NAME"
  check_env_var "AWS_SSO_START_URL"
  check_env_var "AWS_SSO_REGION"
  check_env_var "AWS_SSO_ACCOUNT_ID"
  check_env_var "AWS_SSO_ROLE_NAME"
  check_env_var "AWS_DEFAULT_REGION"

  # Create .aws directory if it doesn't exist
  mkdir -p "${HOME}/.aws"

  # Define the config file path
  readonly CONFIG_FILE="${HOME}/.aws/config"

  echo "--- Generating AWS SSO configuration for '${AWS_PROFILE_NAME}' ---"

  # Construct the new configuration block
  local new_config_block
  new_config_block=$(
    cat << EOF
[${AWS_PROFILE_NAME}]
sso_start_url = ${AWS_SSO_START_URL}
sso_region = ${AWS_SSO_REGION}
sso_account_id = ${AWS_SSO_ACCOUNT_ID}
sso_role_name = ${AWS_SSO_ROLE_NAME}
region = ${AWS_DEFAULT_REGION}
output = json

EOF
  )

  # Overwrite the config file with the new configuration block
  echo "${new_config_block}" > "${CONFIG_FILE}"

  echo "AWS SSO configuration has been written to '${CONFIG_FILE}'."
  echo "You can log in using: aws sso login --profile ${AWS_PROFILE_NAME}"
  echo "--- Done ---"
}

# Call the main function with all script arguments
main "$@"
