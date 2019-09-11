#!/bin/bash

curl "http://localhost:4741/moties/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
