#!/bin/zsh
# https://rakhesh.com/mac/using-hidutil-to-map-macos-keyboard-keys/
# Remap caps lock to backspace
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x70000002A}]}'

cp com.local.KeyRemapping.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.local.KeyRemapping.plist

