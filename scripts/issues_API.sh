#!/bin/bash

curl -s -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $1" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/shap/shap/issues/$2 > ./data/issues/v1/$2.json