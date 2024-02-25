Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -F
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g java --enable-post-process-file --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id java-client -o java -c java-config.json
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g javascript --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id javascript-client -o javascript
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g typescript --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id typescript-client -o typescript
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g typescript-angular --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id angular-client -o angular
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g android --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id android-client -o android
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g clojure --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id clojure-client -o clojure
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g cpp-qt-client --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id cpp-client -o cpp
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g csharp-dotnet2 --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id csharp-client -o csharp --additional-properties hideGenerationTimestamp=true
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g dart --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id dart-client -o dart
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g elixir --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id elixir-client -o elixir
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g erlang-client --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id erlang-client -o erlang
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g scala-finch --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id scala-client -o scala -c java-config.json
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g go --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id go-client -o go
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g php --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id php-client -o php
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g python --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id python-client -o python
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g rust --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id rust-client -o rust
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g ruby --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id ruby-client -o ruby
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g lua --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id lua-client -o lua
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g perl --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id perl-client -o perl
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g objc --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id objc-client -o  objc
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g groovy --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id groovy-client -o groovy
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g haskell-http-client --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id haskell-client -o haskell
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g kotlin --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id kotlin-client -o kotlin -c java-config.json
java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g elm --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id elm-client -o elm --additional-properties elmPrefixCustomTypeVariants=true
#java -jar .\openapi-generator-cli-5.4.0.jar generate -i .\world-news-api-openapi-3.json -g nodejs-server --api-package com.worldnewsapi --artifact-version 1.0 --model-package com.worldnewsapi.client.model  --invoker-package com.worldnewsapi.client --group-id com.worldnewsapi --artifact-id nodejs-client -o nodejs

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
.\7za.exe a -tzip .\zips\scala-client.zip .\scala\*
.\7za.exe a -tzip .\zips\go-client.zip .\go\*
.\7za.exe a -tzip .\zips\php-client.zip .\php\*
.\7za.exe a -tzip .\zips\python-client.zip .\python\*
.\7za.exe a -tzip .\zips\rust-client.zip .\rust\*
.\7za.exe a -tzip .\zips\ruby-client.zip .\ruby\*
.\7za.exe a -tzip .\zips\lua-client.zip .\lua\*
.\7za.exe a -tzip .\zips\perl-client.zip .\perl\*
.\7za.exe a -tzip .\zips\objc-client.zip .\objc\*
.\7za.exe a -tzip .\zips\groovy-client.zip .\groovy\*
.\7za.exe a -tzip .\zips\haskell-client.zip .\haskell\*
.\7za.exe a -tzip .\zips\kotlin-client.zip .\kotlin\*
.\7za.exe a -tzip .\zips\elm-client.zip .\elm\*

# copy zips to D:\Software\xampp\htdocs\newsapi\downloads\sdks
Copy-Item .\zips\* D:\Software\xampp\htdocs\newsapi\downloads\sdks\