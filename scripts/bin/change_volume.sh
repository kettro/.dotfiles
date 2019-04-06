#!/bin/bash

default_sink=$(pacmd list-sinks | grep "* index:" | cut -d' ' -f5)

if [[ ! -z $default_sink ]] && [[ $default_sink=~'^[0-9]+$' ]]; then
    if [[ $1 == "inc" ]]; then
        pactl set-sink-volume $default_sink +5%
    elif [[ $1 == "dec" ]]; then
        pactl set-sink-volume $default_sink -5%
    elif [[ $1 == "mute" ]]; then
        pactl set-sink-mute $default_sink toggle
    fi
fi

unset default_sink
