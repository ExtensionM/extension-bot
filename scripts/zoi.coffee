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
	"https://pbs.twimg.com/media/BtcSFKpCQAAb73x.jpg:large"
]

module.exports = (robot) -> 
	robot.hear /(頑張るぞい|がんばるぞい|zoi|がんばるぞい)/i,(res) ->
		res.send res.random random_image
