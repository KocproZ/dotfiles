#!/bin/bash
youtube-dl -f 22 --extract-audio --audio-format mp3 -o "~/Music/%(title)s.%(ext)s" "$1"
