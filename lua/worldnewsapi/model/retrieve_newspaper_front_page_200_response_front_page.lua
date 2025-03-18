--[[
  World News API

  The world's news wrapped into a single API.

  The version of the OpenAPI document: 2.1.0
  Contact: mail@worldnewsapi.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_newspaper_front_page_200_response_front_page class
local retrieve_newspaper_front_page_200_response_front_page = {}
local retrieve_newspaper_front_page_200_response_front_page_mt = {
	__name = "retrieve_newspaper_front_page_200_response_front_page";
	__index = retrieve_newspaper_front_page_200_response_front_page;
}

local function cast_retrieve_newspaper_front_page_200_response_front_page(t)
	return setmetatable(t, retrieve_newspaper_front_page_200_response_front_page_mt)
end

local function new_retrieve_newspaper_front_page_200_response_front_page(name, date, country, image, language)
	return cast_retrieve_newspaper_front_page_200_response_front_page({
		["name"] = name;
		["date"] = date;
		["country"] = country;
		["image"] = image;
		["language"] = language;
	})
end

return {
	cast = cast_retrieve_newspaper_front_page_200_response_front_page;
	new = new_retrieve_newspaper_front_page_200_response_front_page;
}
