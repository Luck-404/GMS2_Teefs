if (ds_list_size(_turns) == 0) exit;

// Ensure someone has the turn
for (var i = 0; i < ds_list_size(_turns); i++)
{
    var cat = _turns[| i];
    cat._my_turn = (i == _active_index);
}
