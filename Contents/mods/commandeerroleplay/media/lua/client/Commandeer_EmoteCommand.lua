require "Commandeer_CommandHandler"

Commandeer_CommandHandler.commands["/me"] = function(param)
	if not param or param == "" then
		return "Usage: /me does a thing.";
	end
	processSayMessage(string.format("*%s* ** %s %s", "purple", Commandeer_RPName.getRPName(), param))
end

Commandeer_CommandHandler.commands["/m"] = Commandeer_CommandHandler.commands["/me"]