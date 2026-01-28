function scr_advance_dialogue()
{
    _dialogue_index++;

	if (_dialogue_index >= array_length(dialogue_timeline))
	{
	    _dialogue_index = 0;
	}


    var entry = dialogue_timeline[_dialogue_index];
    var speaker = cats[? entry.speaker];

	with (speaker)
	{
	    scr_start_line(entry.text);
	}
}
