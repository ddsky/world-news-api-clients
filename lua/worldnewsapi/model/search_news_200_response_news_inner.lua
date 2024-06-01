--[[
  World News API

  The world's news wrapped into a single API.

  The version of the OpenAPI document: 1.1.1
  Contact: mail@worldnewsapi.com
  Generated by: https://openapi-generator.tech
]]

-- search_news_200_response_news_inner class
local search_news_200_response_news_inner = {}
local search_news_200_response_news_inner_mt = {
	__name = "search_news_200_response_news_inner";
	__index = search_news_200_response_news_inner;
}

local function cast_search_news_200_response_news_inner(t)
	return setmetatable(t, search_news_200_response_news_inner_mt)
end

local function new_search_news_200_response_news_inner(summary, image, sentiment, source_country, language, id, text, title, publish_date, url, authors)
	return cast_search_news_200_response_news_inner({
		["summary"] = summary;
		["image"] = image;
		["sentiment"] = sentiment;
		["source_country"] = source_country;
		["language"] = language;
		["id"] = id;
		["text"] = text;
		["title"] = title;
		["publish_date"] = publish_date;
		["url"] = url;
		["authors"] = authors;
	})
end

return {
	cast = cast_search_news_200_response_news_inner;
	new = new_search_news_200_response_news_inner;
}