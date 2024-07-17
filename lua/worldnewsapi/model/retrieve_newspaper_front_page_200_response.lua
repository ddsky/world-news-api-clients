--[[
  World News API

  The world's news wrapped into a single API.

  The version of the OpenAPI document: 1.3.2
  Contact: mail@worldnewsapi.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_newspaper_front_page_200_response class
local retrieve_newspaper_front_page_200_response = {}
local retrieve_newspaper_front_page_200_response_mt = {
	__name = "retrieve_newspaper_front_page_200_response";
	__index = retrieve_newspaper_front_page_200_response;
}

local function cast_retrieve_newspaper_front_page_200_response(t)
	return setmetatable(t, retrieve_newspaper_front_page_200_response_mt)
end

local function new_retrieve_newspaper_front_page_200_response(front_page)
	return cast_retrieve_newspaper_front_page_200_response({
		["front_page"] = front_page;
	})
end

return {
	cast = cast_retrieve_newspaper_front_page_200_response;
	new = new_retrieve_newspaper_front_page_200_response;
}