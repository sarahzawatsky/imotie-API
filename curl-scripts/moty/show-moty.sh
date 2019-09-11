#!/bin/bash

curl "http://localhost:4741/moties/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
