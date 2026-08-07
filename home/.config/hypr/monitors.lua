--- MONITORS
--- See https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
	output = "DP-1",
	mode = "3840x2160@60",
	position = "0x0",
	scale = 1,
})

hl.monitor({
	output = "DP-2",
	mode = "3840x2160@60",
	position = "3840x0",
	scale = 1,
})

hl.monitor({
	output = "DP-3",
	mode = "3840x2160@60",
	position = "-2160x-1275",
	scale = 1,
	transform = 3,
})
