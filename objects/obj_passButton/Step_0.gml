if (instance_exists(panelHudId)) {
    x = panelHudId.x + panelHudOffsetX;
    y = panelHudId.y + panelHudOffsetY;
}

if (isVisible && instance_exists(panelHudId) && panelHudId.isVisible && panelHudId.image_alpha > 0) {
    image_alpha = 1;
    if (image_index == panelHudId.buttonPointer) {
        image_blend = c_yellow;
    } else {
        image_blend = c_white;
    }
} else {
    image_alpha = 0;
    image_blend = c_white;
}