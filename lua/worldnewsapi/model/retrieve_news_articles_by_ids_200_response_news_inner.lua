--[[
  World News API

  The world's news wrapped into a single API.

  The version of the OpenAPI document: 1.2.0
  Contact: mail@worldnewsapi.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_news_articles_by_ids_200_response_news_inner class
local retrieve_news_articles_by_ids_200_response_news_inner = {}
local retrieve_news_articles_by_ids_200_response_news_inner_mt = {
	__name = "retrieve_news_articles_by_ids_200_response_news_inner";
	__index = retrieve_news_articles_by_ids_200_response_news_inner;
}

local function cast_retrieve_news_articles_by_ids_200_response_news_inner(t)
	return setmetatable(t, retrieve_news_articles_by_ids_200_response_news_inner_mt)
end

local function new_retrieve_news_articles_by_ids_200_response_news_inner(summary, image, sentiment, catgory, language, title, url, source_country, id, text, publish_date, authors)
	return cast_retrieve_news_articles_by_ids_200_response_news_inner({
		["summary"] = summary;
		["image"] = image;
		["sentiment"] = sentiment;
		["catgory"] = catgory;
		["language"] = language;
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
	cast = cast_retrieve_news_articles_by_ids_200_response_news_inner;
	new = new_retrieve_news_articles_by_ids_200_response_news_inner;
}
