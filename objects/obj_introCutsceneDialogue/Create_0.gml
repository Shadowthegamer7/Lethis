_scale = 1
image_xscale = _scale
image_yscale = _scale
image_alpha = 0

_camera = view_camera[0]
_boxX = camera_get_view_x(_camera) + camera_get_view_width(_camera)/2
_boxY = camera_get_view_y(_camera) + camera_get_view_height(_camera)/1.75

x = _boxX
y = _boxY

_fadeRate = 0.05
_dissapear = false
_changeBg1 = 3
_changeBg2 = 6
_changeBg3 = image_number - 1
_totalFrames = image_number - 1