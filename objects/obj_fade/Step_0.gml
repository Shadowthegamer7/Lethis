if (room == rm_titlescreen || room == rm_warpedHouse2) {
	image_alpha = min(image_alpha + 0.01, 1);
	if (room == rm_warpedHouse2 && isWarpedHouse2Cutscene
		&& cutsceneAudioFadeStarted
		&& current_time - cutsceneAudioFadeStartedAt >= 3000) {
		cutsceneAudioFadeComplete = true;
	}
} else {
	image_alpha = max(image_alpha - 0.01, 0);
	if (image_alpha <= 0) {
		instance_destroy();
	}
}