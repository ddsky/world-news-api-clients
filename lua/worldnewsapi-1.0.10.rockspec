package = "worldnewsapi"
version = "1.0.10"
source = {
	url = "https://github.com/ddsky/world-news-api-clients/tree/main/lua/.git"
}

description = {
	summary = "API client generated by OpenAPI Generator",
	detailed = [[
The world's news wrapped into a single API.]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["worldnewsapi.api.news_api"] = "worldnewsapi/api/news_api.lua";
		["worldnewsapi.model.extract_links_response"] = "worldnewsapi/model/extract_links_response.lua";
		["worldnewsapi.model.extract_news_response"] = "worldnewsapi/model/extract_news_response.lua";
		["worldnewsapi.model.geo_coordinates_response"] = "worldnewsapi/model/geo_coordinates_response.lua";
		["worldnewsapi.model.news"] = "worldnewsapi/model/news.lua";
		["worldnewsapi.model.news_article"] = "worldnewsapi/model/news_article.lua";
		["worldnewsapi.model.search_news_response"] = "worldnewsapi/model/search_news_response.lua";
	}
}
