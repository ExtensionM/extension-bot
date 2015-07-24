DAY = 1000 * 60 * 60  * 24

module.exports = (robot) ->
	robot.hear /(.+)?(夏休み|なつやすみ)(残り)?(何日|どれくらい)(\?)?/i ,(res) ->
		nowd = new Date
		svfi = new Date('08/31/2015')
		days_passed = Math.round((svfi.getTime() - nowd.getTime()) / DAY)

		res.send "残り#{days_passed}日です"
