var i;
if (os_type == os_windows)
{
    for (i = 0; i < joystick_buttons(argument0); i++)
    {
        if joystick_check_button(argument0, i)
            return i;
    }
}
else
{
    for (i = 0; i < gamepad_button_count(argument0); i++)
    {
        if gamepad_button_check(argument0, i)
            return (i + 1);
    }
}
return 0;
