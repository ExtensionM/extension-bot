# Description:
#   夏休みの残り日数を取る
# Command:
# 　夏休み残り何日 - 夏休みの残り日数をお伝えします   

DAY = 1000 * 60 * 60  * 24

cron = require('cron').CronJob;

subtract_day  = () ->
	nowd = new Date
	svfi = new Date('08/31/2015')
	days_passed = Math.round((svfi.getTime() - nowd.getTime()) / DAY)
	return days_passed

module.exports = (robot) ->
	robot.hear /(.+)?(夏休み|なつやすみ)(残り)?(何日|どれくらい)(\?)?/i ,(res) ->
		days_passed = subtract_day()
		res.send "残り#{days_passed}日です"

	new cron '00 00 09 * * 0-6',() =>
		days_passed = subtract_day()
		d = new Date
		res.send {room: "general"},"おはようございます。今日は#{d.getMonth() + 1}月#{d.getDate()}日です。夏休み終了まで残り#{days_passed}日です"
		,null,true,"Asia/Tokyo"
