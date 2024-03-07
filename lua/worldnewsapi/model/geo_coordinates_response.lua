--[[
  World News API

  The world's news wrapped into a single API.

  The version of the OpenAPI document: 1.1
  Contact: mail@worldnewsapi.com
  Generated by: https://openapi-generator.tech
]]

-- geo_coordinates_response class
local geo_coordinates_response = {}
local geo_coordinates_response_mt = {
	__name = "geo_coordinates_response";
	__index = geo_coordinates_response;
}

local function cast_geo_coordinates_response(t)
	return setmetatable(t, geo_coordinates_response_mt)
end

local function new_geo_coordinates_response(latitude, longitude, city)
	return cast_geo_coordinates_response({
		["latitude"] = latitude;
		["longitude"] = longitude;
		["city"] = city;
	})
end

return {
	cast = cast_geo_coordinates_response;
	new = new_geo_coordinates_response;
}
