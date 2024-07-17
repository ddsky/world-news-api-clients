--[[
  World News API

  The world's news wrapped into a single API.

  The version of the OpenAPI document: 1.3.1
  Contact: mail@worldnewsapi.com
  Generated by: https://openapi-generator.tech
]]

-- top_news_200_response class
local top_news_200_response = {}
local top_news_200_response_mt = {
	__name = "top_news_200_response";
	__index = top_news_200_response;
}

local function cast_top_news_200_response(t)
	return setmetatable(t, top_news_200_response_mt)
end

local function new_top_news_200_response(top_news, language, country)
	return cast_top_news_200_response({
		["top_news"] = top_news;
		["language"] = language;
		["country"] = country;
	})
end

return {
	cast = cast_top_news_200_response;
	new = new_top_news_200_response;
}
