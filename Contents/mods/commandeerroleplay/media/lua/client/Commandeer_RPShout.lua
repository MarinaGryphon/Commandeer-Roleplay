require "Commandeer_CommandHandler"

Commandeer_CommandHandler.commands["/shout"] = function(param)
	if not param or param == "" then
		return "Usage: /shout [message]";
	end
	if #param >= 2048 then
		return "Your message was too long to send."
	end
	processShoutMessage(string.format("%s shouts, \"%s\"", Commandeer_RPName.getRPName(), param))
end

Commandeer_CommandHandler.commands["/s"] = Commandeer_CommandHandler.commands["/say"]