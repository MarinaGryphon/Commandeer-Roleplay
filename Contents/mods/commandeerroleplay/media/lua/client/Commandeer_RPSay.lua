require "Commandeer_CommandHandler"

Commandeer_CommandHandler.commands["/say"] = function(param)
	if not param or param == "" then
		return "Usage: /say [message]";
	end
	if #param >= 2048 then
		return "Your message was too long to send."
	end
	local verb = "says";
	if param:find(" ") == nil then -- one-word
		verb = "states";
	end
	if luautils.stringEnds(param, "?") then
		verb = "asks";
	end
	if luautils.stringEnds(param, "!") then
		verb = "exclaims";
	end
	if luautils.stringEnds(param, "...") then
		verb = "mutters";
	end
	processSayMessage(string.format("*%s*%s %s, \"%s\"", "177,210,187", Commandeer_RPName.getRPName(), verb, param))
end

Commandeer_CommandHandler.commands["/s"] = Commandeer_CommandHandler.commands["/say"]