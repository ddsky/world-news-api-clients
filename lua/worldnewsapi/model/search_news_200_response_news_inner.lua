--[[
  World News API

  The world's news wrapped into a single API.

  The version of the OpenAPI document: 1.2.0
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

local function new_search_news_200_response_news_inner(summary, image, sentiment, author, language, video, title, url, source_country, id, text, publish_date, authors)
	return cast_search_news_200_response_news_inner({
		["summary"] = summary;
		["image"] = image;
		["sentiment"] = sentiment;
		["author"] = author;
		["language"] = language;
		["video"] = video;
		["title"] = title;
		["url"] = url;
		["source_country"] = source_country;
		["id"] = id;
		["text"] = text;
		["publish_date"] = publish_date;
		["authors"] = authors;
	})
end

return {
	cast = cast_search_news_200_response_news_inner;
	new = new_search_news_200_response_news_inner;
}
