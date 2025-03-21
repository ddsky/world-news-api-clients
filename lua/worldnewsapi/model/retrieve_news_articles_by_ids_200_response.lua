--[[
  World News API

  The world's news wrapped into a single API.

  The version of the OpenAPI document: 2.2.0
  Contact: mail@worldnewsapi.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_news_articles_by_ids_200_response class
local retrieve_news_articles_by_ids_200_response = {}
local retrieve_news_articles_by_ids_200_response_mt = {
	__name = "retrieve_news_articles_by_ids_200_response";
	__index = retrieve_news_articles_by_ids_200_response;
}

local function cast_retrieve_news_articles_by_ids_200_response(t)
	return setmetatable(t, retrieve_news_articles_by_ids_200_response_mt)
end

local function new_retrieve_news_articles_by_ids_200_response(news)
	return cast_retrieve_news_articles_by_ids_200_response({
		["news"] = news;
	})
end

return {
	cast = cast_retrieve_news_articles_by_ids_200_response;
	new = new_retrieve_news_articles_by_ids_200_response;
}
