#!/bin/bash

# Function to check URL
check_url() {
    local api_key="$1"
    local url="$2"
    local api_url="https://www.virustotal.com/vtapi/v2/url/report"

    echo "Checking URL: $url"

    # Make API request
    response=$(curl -s --request GET --url "$api_url" \
        --get --data "apikey=$api_key" --data "resource=$url")

    # Check HTTP response
    if [[ $? -ne 0 ]]; then
        echo "Error: Failed to connect to VirusTotal API."
        exit 1
    fi

    # Parse response code
    response_code=$(echo "$response" | jq -r ".response_code")

    if [[ "$response_code" -eq 1 ]]; then
        echo "URL found in VirusTotal database."

        # Iterate through scan results
        echo "Threat detection results:"
        echo "$response" | jq -r '.scans | to_entries[] | "\(.key): \(.value.detected | if . then \"Detected\" else \"Not detected\" end)"'
    else
        echo "URL not found in VirusTotal database."
    fi
}

# Ensure jq is installed
if ! command -v jq &>/dev/null; then
    echo "jq is required but not installed. Installing..."
    sudo apt-get update >/dev/null
    sudo apt-get install -y jq
fi

# Prompt for API key and URL
read -p "Enter your VirusTotal API key: " api_key
read -p "Enter the URL to check: " url_to_check

check_url "$api_key" "$url_to_check"
