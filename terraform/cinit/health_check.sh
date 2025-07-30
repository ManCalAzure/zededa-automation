#!/bin/bash
LOG_FILE="health_check.log"
echo "Health Check is monitoring firewall state" | tee -a "$LOG_FILE"
MAX_ATTEMPTS=45
ATTEMPT=1
URL="https://172.16.8.171:10443/"
while [ $ATTEMPT -le $MAX_ATTEMPTS ]; do
  if curl --silent --insecure --fail "$URL" > /dev/null 2>&1; then
    echo "The firewall is online, terraform to continue" | tee -a "$LOG_FILE"
    exit 0
  else
    sleep 10
    ATTEMPT=$((ATTEMPT + 1))
  fi
done
# Comment out or remove the error line below if you want NO failure output in the demo
# echo "Error: No response from firewall after many attempts" | tee -a "$LOG_FILE"
exit 1