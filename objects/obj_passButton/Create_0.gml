image_alpha = 0
depth = -10000
isVisible = false;

panelHudId = instance_find(obj_panelHud, 0);
if (panelHudId != noone) {
    panelHudOffsetX = x - panelHudId.x;
    panelHudOffsetY = y - panelHudId.y;
}