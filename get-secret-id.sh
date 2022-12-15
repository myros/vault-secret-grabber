#!/bin/bash -e
set -ex pipefail

# GRAB DATA FROM TERRAFORM QUERY BLOCK

eval "$(jq -r '@sh "API_ADDR=\(.api_url) API_TOKEN_KEY=\(.api_token_key) API_TOKEN=\(.api_token_value) ROLE=\(.vault_approle_name) VAULT_NAMESPACE=\(.vault_namespace)"')"

# EXECUTE COMMAND 

data=$(curl --location \
  --request POST \
  -s \
  -H "${API_TOKEN_KEY}:${API_TOKEN}" \
  -H "X-Vault-Role:${ROLE}" \
  -H "X-Vault-Namespace:${VAULT_NAMESPACE}" \
  "${API_ADDR}")

secret_id=$(echo $data | jq -r .secret_id)
errors=$(echo $data | jq -r .errors)

if [ "$secret_id" == null ]; then
  echo "${errors}"
  exit 1
else
  jq -n --arg secret_id "$secret_id" \
    --arg errors "$errors" \
    --arg data "$data" \
    '{
      "secret_id":$secret_id,
      "errors":$errors,
      "data":$data
    }'
  
fi

