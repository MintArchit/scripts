#!/bin/bash

export NEWT_COLORS='
window=,red
border=white,red
textbox=white,red
button=black,white
'

# {{result_variable_name}}=$(whiptail --title "{{title}}" --menu "{{message}}" {{height_in_chars}} {{width_in_chars}} {{menu_display_height}} "{{value_1}}" "{{display_text_1}}" "{{value_n}}" "{{display_text_n}}" ..... 3>&1 1>&2 2>&3)

result_variable_name=$(whiptail --title "Choose" --menu "message" 10 50 8 "value_1" "display_text_1" "value_n" "display_text_n" ..... 3>&1 1>&2 2>&3)

eval "$result_variable_name"
