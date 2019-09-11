#!/bin/bash

curl "http://localhost:4741/moties/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "moty": {
      "emotion": "'"${EMOTION}"'",
      "intensity": "'"${INTENSITY}"'",
      "cause": "'"${CAUSE}"'",
      "appearance": "'"${APPEARANCE}"'",
      "solution": "'"${SOLUTION}"'"
    }
  }'

echo
