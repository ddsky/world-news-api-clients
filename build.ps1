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
Compress-Archive -Path .\java\* -DestinationPath .\zips\java-client.zip -Force
Compress-Archive -Path .\javascript\* -DestinationPath .\zips\javascript-client.zip -Force
Compress-Archive -Path .\typescript\* -DestinationPath .\zips\typescript-client.zip -Force
Compress-Archive -Path .\angular\* -DestinationPath .\zips\angular-client.zip -Force
Compress-Archive -Path .\android\* -DestinationPath .\zips\android-client.zip -Force
Compress-Archive -Path .\clojure\* -DestinationPath .\zips\clojure-client.zip -Force
Compress-Archive -Path .\cpp\* -DestinationPath .\zips\cpp-client.zip -Force
Compress-Archive -Path .\csharp\* -DestinationPath .\zips\csharp-client.zip -Force
Compress-Archive -Path .\dart\* -DestinationPath .\zips\dart-client.zip -Force
Compress-Archive -Path .\elixir\* -DestinationPath .\zips\elixir-client.zip -Force
Compress-Archive -Path .\erlang\* -DestinationPath .\zips\erlang-client.zip -Force
Compress-Archive -Path .\scala\* -DestinationPath .\zips\scala-client.zip -Force
Compress-Archive -Path .\go\* -DestinationPath .\zips\go-client.zip -Force
Compress-Archive -Path .\php\* -DestinationPath .\zips\php-client.zip -Force
Compress-Archive -Path .\python\* -DestinationPath .\zips\python-client.zip -Force
Compress-Archive -Path .\rust\* -DestinationPath .\zips\rust-client.zip -Force
Compress-Archive -Path .\ruby\* -DestinationPath .\zips\ruby-client.zip -Force
Compress-Archive -Path .\lua\* -DestinationPath .\zips\lua-client.zip -Force
Compress-Archive -Path .\perl\* -DestinationPath .\zips\perl-client.zip -Force
Compress-Archive -Path .\objc\* -DestinationPath .\zips\objc-client.zip -Force
Compress-Archive -Path .\groovy\* -DestinationPath .\zips\groovy-client.zip -Force
Compress-Archive -Path .\haskell\* -DestinationPath .\zips\haskell-client.zip -Force
Compress-Archive -Path .\kotlin\* -DestinationPath .\zips\kotlin-client.zip -Force
Compress-Archive -Path .\elm\* -DestinationPath .\zips\elm-client.zip -Force
#Compress-Archive -Path .\nodejs\* -DestinationPath .\zips\nodejs-client.zip -Force