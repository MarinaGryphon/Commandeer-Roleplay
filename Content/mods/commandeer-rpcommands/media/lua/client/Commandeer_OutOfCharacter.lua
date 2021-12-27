require "Commandeer_CommandHandler"

Commandeer_CommandHandler.commands["/all"] = function(param)
	if not param or param == "" then
		return "Usage: /ooc [message]";
	end
	processGeneralMessage(string.format("%s: ((%s))", Commandeer_RPName.getRPName(), param))
end

Commandeer_CommandHandler.commands["//"] = Commandeer_CommandHandler.commands["/all"]
Commandeer_CommandHandler.commands["/ooc"] = Commandeer_CommandHandler.commands["/all"]