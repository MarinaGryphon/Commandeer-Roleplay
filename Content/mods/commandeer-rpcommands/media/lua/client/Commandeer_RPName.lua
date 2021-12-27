require "Commandeer_CommandHandler"

Commandeer_RPName = Commandeer_RPName or {}
Commandeer_RPName.rpname = nil;
Commandeer_RPName.getRPName = function()
	return Commandeer_RPName.rpname or getOnlineUsername();
end

Commandeer_CommandHandler.commands["/name"] = function(param)
	if not param or param == "" then
		Commandeer_RPName.rpname = nil;
		return "Roleplay name reset.";
	end
	Commandeer_RPName.rpname = param;
	return string.format("Roleplay name updated to '%s'.", param)
end

Commandeer_RPName.oldGetTextWithPrefix = Commandeer_RPName.oldGetTextWithPrefix or __classmetatables[ChatMessage.class]["__index"].getTextWithPrefix;
__classmetatables[ChatMessage.class]["__index"].getTextWithPrefix = function(message) return Commandeer_RPName.oldGetTextWithPrefix(message):gsub("> %[.-%]:%s*", "> ", 1); end

Commandeer_CommandHandler.commands["/act"] = Commandeer_CommandHandler.commands["/name"]