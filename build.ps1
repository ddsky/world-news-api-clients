Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -F

# Setting environment variables
$env:PYTHON_POST_PROCESS_FILE = "yapf -i"
$VERSION = "2.2.0"
$env:VERSION = $VERSION
$GEN = "openapi-generator-cli-7.8.0-SNAPSHOT.jar"

# Removing the 'python' directory
Remove-Item -Path python -Recurse -Force
Remove-Item -Path java -Recurse -Force
Remove-Item -Path javascript -Recurse -Force
Remove-Item -Path typescript -Recurse -Force
Remove-Item -Path angular -Recurse -Force
Remove-Item -Path android -Recurse -Force
Remove-Item -Path clojure -Recurse -Force
Remove-Item -Path cpp -Recurse -Force
Remove-Item -Path csharp -Recurse -Force
Remove-Item -Path dart -Recurse -Force
Remove-Item -Path elixir -Recurse -Force
Remove-Item -Path erlang -Recurse -Force
Remove-Item -Path go -Recurse -Force
Remove-Item -Path php -Recurse -Force
Remove-Item -Path rust -Recurse -Force
Remove-Item -Path ruby -Recurse -Force
Remove-Item -Path lua -Recurse -Force
Remove-Item -Path perl -Recurse -Force
Remove-Item -Path haskell -Recurse -Force
Remove-Item -Path kotlin -Recurse -Force
Remove-Item -Path elm -Recurse -Force

java -jar $GEN generate -i .\world-news-api-openapi-3.json -g java --artifact-version $VERSION --api-package com.worldnewsapi --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/java/ --git-user-id=ddsky --artifact-id java-client -o java -c java-config.json
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g python --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --git-repo-id=world-news-api-clients/tree/main/python/ --git-user-id=ddsky --template-dir python-custom-template --artifact-id python-client --enable-post-process-file -o python 
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g javascript --artifact-version $VERSION --additional-properties projectVersion=$VERSION,projectName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/javascript/ --git-user-id=ddsky --artifact-id javascript-client -o javascript
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g typescript --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/typescript/ --git-user-id=ddsky --artifact-id typescript-client -o typescript
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g typescript-angular --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/angular/ --git-user-id=ddsky --artifact-id angular-client -o angular
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g android --api-package com.worldnewsapi --model-package com.worldnewsapi.client.model --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/android/ --git-user-id=ddsky --artifact-id android-client -o android
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g clojure --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/clojure/ --git-user-id=ddsky --artifact-id clojure-client -o clojure
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g cpp-qt-client --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/cpp/ --git-user-id=ddsky --artifact-id cpp-client -o cpp
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g csharp --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/csharp/ --git-user-id=ddsky --artifact-id csharp-client -o csharp --additional-properties hideGenerationTimestamp=true
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g dart --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/dart/ --git-user-id=ddsky --artifact-id dart-client -o dart
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g elixir --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/elixir/ --git-user-id=ddsky --artifact-id elixir-client -o elixir
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g erlang-client --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/erlang/ --git-user-id=ddsky --artifact-id erlang-client -o erlang
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g go --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/go/ --git-user-id=ddsky --artifact-id go-client -o go
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g php --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/php/ --git-user-id=ddsky --artifact-id php-client -o php
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g rust --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/rust/ --git-user-id=ddsky --artifact-id rust-client -o rust
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g ruby --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/ruby/ --git-user-id=ddsky --artifact-id ruby-client -o ruby
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g lua --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/lua/ --git-user-id=ddsky --artifact-id lua-client -o lua
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g perl --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/perl/ --git-user-id=ddsky --artifact-id perl-client -o perl
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g haskell-http-client --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/haskell/ --git-user-id=ddsky --artifact-id haskell-client -o haskell
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g kotlin --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/kotlin/ --git-user-id=ddsky --artifact-id kotlin-client -o kotlin -c java-config.json
java -jar $GEN generate -i .\world-news-api-openapi-3.json -g elm --artifact-version $VERSION --additional-properties packageVersion=$VERSION,project-name=worldnewsapi,packageName=worldnewsapi --inline-schema-name-mappings search_news_200_response_news_inner=NewsArticle,search_news_200_response=SearchNewsResponse,extract_news_200_response=ExtractNewsResponse,extract_news_links_200_response="ExtractLinksResponse",geo_coordinates_200_response=GeoCoordinatesResponse --git-repo-id=world-news-api-clients/tree/main/elm/ --git-user-id=ddsky --artifact-id elm-client -o elm --additional-properties elmPrefixCustomTypeVariants=true

# build npm package
cd javascript
npm uninstall babel
npm run build
npm publish
Remove-Item -Path node_modules -Recurse -Force
cd ..

# create sdk zips
.\7za.exe a -tzip .\zips\java-client.zip .\java\*
.\7za.exe a -tzip .\zips\javascript-client.zip .\javascript\*
.\7za.exe a -tzip .\zips\typescript-client.zip .\typescript\*
.\7za.exe a -tzip .\zips\angular-client.zip .\angular\*
.\7za.exe a -tzip .\zips\android-client.zip .\android\*
.\7za.exe a -tzip .\zips\clojure-client.zip .\clojure\*
.\7za.exe a -tzip .\zips\cpp-client.zip .\cpp\*
.\7za.exe a -tzip .\zips\csharp-client.zip .\csharp\*
.\7za.exe a -tzip .\zips\dart-client.zip .\dart\*
.\7za.exe a -tzip .\zips\elixir-client.zip .\elixir\*
.\7za.exe a -tzip .\zips\erlang-client.zip .\erlang\*
.\7za.exe a -tzip .\zips\go-client.zip .\go\*
.\7za.exe a -tzip .\zips\php-client.zip .\php\*
.\7za.exe a -tzip .\zips\python-client.zip .\python\*
.\7za.exe a -tzip .\zips\rust-client.zip .\rust\*
.\7za.exe a -tzip .\zips\ruby-client.zip .\ruby\*
.\7za.exe a -tzip .\zips\lua-client.zip .\lua\*
.\7za.exe a -tzip .\zips\perl-client.zip .\perl\*
.\7za.exe a -tzip .\zips\haskell-client.zip .\haskell\*
.\7za.exe a -tzip .\zips\kotlin-client.zip .\kotlin\*
.\7za.exe a -tzip .\zips\elm-client.zip .\elm\*

# copy zips to D:\Software\xampp\htdocs\newsapi\downloads\sdks
Copy-Item .\zips\* D:\Software\xampp\htdocs\newsapi\downloads\sdks\

############ pip release
# Copy README_pypi.md from python-custom-template to python
Copy-Item -Path "python-custom-template/README_pypi.md" -Destination "python"

# Change directory to python
Set-Location -Path "python"

# Create a source distribution and a wheel distribution
python3 setup.py sdist bdist_wheel

# Upload the distributions using Twine
twine upload dist/*