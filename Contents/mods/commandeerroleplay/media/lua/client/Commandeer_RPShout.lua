require "Commandeer_CommandHandler"

Commandeer_CommandHandler.commands["/shout"] = function(param)
	if not param or param == "" then
		return "Usage: /shout [message]";
	end
	processShoutMessage(string.format("%s shouts, \"%s\"", Commandeer_RPName.getRPName(), param))
end

Commandeer_CommandHandler.commands["/sh"] = Commandeer_CommandHandler.commands["/shout"]