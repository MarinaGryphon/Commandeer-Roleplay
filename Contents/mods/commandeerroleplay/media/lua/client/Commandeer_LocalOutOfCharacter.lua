require "Commandeer_CommandHandler"

Commandeer_CommandHandler.commands["/looc"] = function(param)
	if not param or param == "" then
		return "Usage: /looc [message]";
	end
	processSayMessage(string.format("*%s*%s: ((%s))", "teal", Commandeer_RPName.getRPName(), param))
end

Commandeer_CommandHandler.commands["/l"] = Commandeer_CommandHandler.commands["/looc"]