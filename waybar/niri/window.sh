#!/bin/bash
title=$(niri msg -j focused-window | jq -r '.title // ""')

class="window custom-window"

jq --unbuffered --compact-output -n --arg title "$title" --arg class "$class" '{text: $title, class: $class}'
