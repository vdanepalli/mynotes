#!/usr/bin/env bash

# Function definition
deploy_service() {
    local SERVICE_NAME="$1"
    local PORT="${2:-8080}" # Default to 8080 if arg 2 is empty

    echo "Deploying $SERVICE_NAME on port $PORT..."
    
    # 0 indicates success in UNIX conventions
    return 0
}

# Calling the function
deploy_service "api-gateway" 3000
deploy_service "auth-service"

# Capture exit status ($?)
if [[ $? -eq 0 ]]; then
    echo "Deployment completed successfully."
fi