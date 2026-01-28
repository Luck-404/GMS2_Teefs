function request_turn_swap()
{
    _active_index++;

    if (_active_index >= ds_list_size(_turns))
    {
        _active_index = 0;
    }
}
