#!/bin/bash

curl "http://localhost:4741/moties" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
