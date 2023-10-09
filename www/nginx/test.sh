#!/bin/sh

response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:80)

      # Check if the response code is 200 (OK)
      - if [ "$response" -eq 200 ]; then
          echo "Web server is responding with HTTP 200 OK.";
        else
          echo "Web server is not responding with HTTP 200 OK. Response code: $response";
          exit 1; # Exit with an error status
        fi