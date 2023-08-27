# shap-issues
This is the attempt to get shap issues under control.

## Tables of issues
- [all issues](https://htmlpreview.github.io/?https://github.com/detrin/shap-issues/blob/main/issues_v1_open.html)
- [all open issues](https://htmlpreview.github.io/?https://github.com/detrin/shap-issues/blob/main/issues_v1_open.html)
- [all open issues, ordered by length of body](https://htmlpreview.github.io/?https://github.com/detrin/shap-issues/blob/main/issues_v1_open_ordered.html)
- [all open issues, ordered by number of comments](https://htmlpreview.github.io/?https://github.com/detrin/shap-issues/blob/main/issues_v1_open_ordered_c.html)

## Scraping issues

We will use github API, make sure that you have your personal token set

```shell
seq 1 3217 | parallel -j 6 --bar ./scripts/issues_API.sh $GITHUB_TOKEN {}
seq 1 3217 | parallel -j 6 --bar "jq '{number: .number, state: .state, title: .title, body: .body, comments: .comments, created_at: .created_at, updated_at: .updated_at, author_association: .author_association, html_url: .html_url, pull_request: has(\"pull_request\")}' ./data/issues/v1/{}.json" | jq -s . > ./data/issues_v1.json  
```

## GPT Description

See noteboks folder in which we have the following notebooks:
- playground.ipynb: this is the notebook where we play with the data and the model
- process_v1.ipynb: this is the notebook where we get requesst from openai API and save them in a json file
- display_v1.ipynb: this is the notebook where we display the results of the model as html
  