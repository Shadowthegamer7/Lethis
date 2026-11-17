if (room == rm_libraryEntrance)
{
    if (image_alpha < 1)
    {
        image_alpha = min(1, image_alpha + 0.01);
    }

    if (image_alpha >= 1)
    {
        if (!musicFadeStarted && global.currenttrack != 0)
        {
            musicTrackToFade = global.currenttrack;
            musicTrackGain = audio_sound_get_gain(musicTrackToFade);
            audio_sound_gain(musicTrackToFade, 0, 1000);
            musicFadeStarted = true;
        }

        if (musicFadeStarted && audio_sound_get_gain(musicTrackToFade) <= 0.01)
        {
            audio_stop_sound(musicTrackToFade);
            audio_sound_gain(musicTrackToFade, musicTrackGain, 0);

            if (global.currenttrack == musicTrackToFade)
            {
                global.currenttrack = 0;
            }

            musicFadeStarted = false;
            musicTrackToFade = 0;
        }

        if (!musicFadeStarted && global.currenttrack == 0)
        {
            room_goto(rm_warpedHouse1);
        }
    }
}
else if (room == rm_warpedHouse1)
{
    if (!musicFadeInStarted)
    {
        musicFadeInStarted = true;
        musicFadeInTrack = audio_play_sound(mus_warpedHouse, 100, true, 0);
        global.currenttrack = mus_warpedHouse;
        audio_sound_gain(musicFadeInTrack, 1, 1000);
    }

    if (image_alpha > 0)
    {
        image_alpha = max(0, image_alpha - 0.01);
    }

    if (image_alpha <= 0 && audio_sound_get_gain(musicFadeInTrack) >= 0.99)
    {
        instance_destroy();
    }
}
