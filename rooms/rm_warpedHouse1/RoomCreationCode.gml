if !audio_group_is_loaded(ag_music) || !audio_group_is_loaded(ag_sfx)
    {
        audio_group_load(ag_music);
        audio_group_load(ag_sfx);
    }