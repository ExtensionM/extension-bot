# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
	robot.hear /喋って/i, (msg) ->
		msg.send msg.random [
			"こんにちは",
			"なんでしょうか",
			"進捗は?"
		]
	
	robot.hear /@extension-bot/ , (msg) ->
		msg.send msg.random [
			"進捗は?"
		]
