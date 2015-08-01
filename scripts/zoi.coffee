#description:
# 今日も一日頑張るぞい!(頑張るとは言ってない)
#Commands:
# zoi - 今日も一日頑張れるかもしれない画像を送信します


random_image = [
	"https://pbs.twimg.com/media/BspWfqoCYAE836J.jpg:large",
	"https://pbs.twimg.com/media/BspTawrCEAAwQnP.jpg:large",
	"https://pbs.twimg.com/media/BspTkipCIAE4a0n.jpg:large",
	"https://pbs.twimg.com/media/BspWSkvCAAAMi43.jpg:large",
	"https://pbs.twimg.com/media/BspWVoqCEAADtZ4.jpg:large",
	"https://pbs.twimg.com/media/BspWaPYCAAAI6Ui.jpg:large",
	"https://pbs.twimg.com/media/BswuTdaCQAAQCkg.jpg:large",
	"https://pbs.twimg.com/media/BspWc7LCAAAPzhS.jpg:large",
	"https://pbs.twimg.com/media/BtcSLNRCMAAFGoH.jpg:large",
	"https://pbs.twimg.com/media/BtcSIHmCUAA8Prp.jpg:large",
	"https://pbs.twimg.com/media/BswuLr2CMAA1SpE.jpg:large",
	"https://pbs.twimg.com/media/BtcSRdRCMAArUCS.jpg:large",
	"https://pbs.twimg.com/media/BspWlZFCMAA4fmV.jpg:large",
	"https://pbs.twimg.com/media/BswuMrPCEAEECXg.jpg:large",
	"https://pbs.twimg.com/media/BtcSOp6CcAA9_b4.jpg:large",
	"https://pbs.twimg.com/media/BtcSFKpCQAAb73x.jpg:large",
	"https://pbs.twimg.com/media/BspWoBQCcAAm9y5.jpg:large",
	"https://pbs.twimg.com/media/BtcSM8BCYAE3_8j.jpg:large",
	"https://pbs.twimg.com/media/BswuH1qCcAAueYw.jpg:large",
	"https://pbs.twimg.com/media/BswuNkICcAE4olR.jpg:large",
	"https://pbs.twimg.com/media/BswuJviCYAMCdGc.png:large",
	"https://pbs.twimg.com/media/Bsw1StjCQAA9NQ1.jpg:large",
	"https://pbs.twimg.com/media/BswuUTPCYAAVX5n.jpg:large",
	"https://pbs.twimg.com/media/BtcSU0xCcAAmz_W.jpg:large",
	"https://pbs.twimg.com/media/Bs7qd4uCAAAwalT.jpg:large",
	"https://pbs.twimg.com/media/Bts7OpFCcAEkaO4.jpg:large",
	"https://pbs.twimg.com/media/BtcSG05CMAEEyIG.jpg:large",
	"https://pbs.twimg.com/media/BtcSDbWCQAADuhK.jpg:large",
	"https://pbs.twimg.com/media/Bts7BNsCMAASKsP.jpg:large"
]

module.exports = (robot) -> 
	robot.hear /(ぞい|ゾイ|頑張るぞい|がんばるぞい|zoi|がんばるぞい)/i,(res) ->
		res.send res.random random_image
