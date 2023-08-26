# shap-issues
This is the attempt to get shap issues under control.

seq 1 3217 | parallel -j 6 --bar ./scripts/issues_API.sh $GITHUB_TOKEN {}
seq 1 3217 | parallel -j 6 --bar "jq '{number: .number, state: .state, title: .title, body: .body, comments: .comments, created_at: .created_at, updated_at: .updated_at, author_association: .author_association, html_url: .html_url, pull_request: has(\"pull_request\")}' ./data/issues/v1/{}.json" | jq -s . > ./data/issues_v1.json  
