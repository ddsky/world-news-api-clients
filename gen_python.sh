export PYTHON_POST_PROCESS_FILE="/Users/tobias/opt/anaconda3/bin/yapf -i"
export VERSION=1.0.7

rm -rf python

/opt/homebrew/bin/openapi-generator generate -i ./world-news-api-openapi-3.json -g python --artifact-version $VERSION --artifact-id python-client --additional-properties packageVersion=$VERSION,project-name=wordnewsapi,packageName=worldnewsapi -o python --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --enable-post-process-file --git-repo-id=world-news-api-clients/tree/main/python/ --git-user-id=ddsky --template-dir python-custom-template
