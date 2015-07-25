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
	robot.respond /(?!(.*)?(wiki|adapter|animate|chat|echo|help|image|map|mustache|ping|pug|time|rules|trasnlate|ship))(.*)/i, (msg) ->
		send = msg.match[0].replace("@extension-bot","")
		msg.send "#{send} じゃねんじゃ 進捗だせ"
		
