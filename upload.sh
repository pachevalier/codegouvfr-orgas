#!/bin/bash
# fail on error
set -e
export api="https://www.data.gouv.fr/api/1"
export dataset_id="5d92d6046f444110a3a545e3"
export api_key=$API_KEY
curl "$api/datasets/$dataset_id/resources/d35a98f4-4e89-4891-8029-bb9495f0b74f/upload/" -F "file=@datagouv.csv" -H "X-API-KEY:$api_key"
curl "$api/datasets/$dataset_id/resources/ac26b864-6a3a-496b-8832-8cde436f5230/upload/" -F "file=@lannuaire.csv" -H "X-API-KEY:$api_key"
