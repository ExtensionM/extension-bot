# Description:
#   Shindan From Hubot
#
# Dependencies:
#   "request"
#   "cheerio"
#
# Configuration:
#   None
#
# Commands:
# 	hubot shindan sindanid usename - shindan
#
# Author:
#   sh4869


request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /shindan ([^\s]*) ([^\s]*)/i, (msg) ->
    url = "https://shindanmaker.com/" + msg.match[1]
    username = msg.match[2]
    options =
      headers: {'content-type' : 'application/x-www-form-urlencoded'}
      url: url
      timeout: 2000
      body: "u=" + username + "&from="

    request.post options, (error, response, body) ->
      $ = cheerio.load body
      result = $("textarea").text().replace(/\n/g, "").replace(/\t/g, "")
      msg.send(result)
