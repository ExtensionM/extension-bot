# Description:
#   夏休みの残り日数を取る
# Command:
# 　夏休み残り何日 - 夏休みの残り日数をお伝えします   

DAY = 1000 * 60 * 60  * 24


subtract_day  = (data) ->
	nowd = new Date
	svfi = new Date(data)
	days_passed = Math.round((svfi.getTime() - nowd.getTime()) / DAY)
	return days_passed

module.exports = (robot) ->
	robot.hear /(.+)?(夏休み|なつやすみ)(残り)?(何日|どれくらい)(\?)?/i ,(res) ->
		days_passed = subtract_day('08/31/2015')
		if days_passed > 0
			res.send "残り#{days_passed}日です"
		else 
			days_passed = -1 * days_passed
			res.send "夏休みが終了してから#{days_passed}日です"

	robot.hear /(.+)?センター(試験)?(まで|残り)?(どれくらい|何日)(\?)?/i ,(res) ->
		days_passed = subtract_day('01/16/2016')
		if days_passed > 0
			res.send "残り#{days_passed}日です"
		else 
			days_passed = -1 * days_passed
			res.send "センター試験が終わってから#{days_passed}日です"

