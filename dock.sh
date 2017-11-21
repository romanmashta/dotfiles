#!/usr/bin/env bash

dockutil --remove Siri
dockutil --remove Safari
dockutil --remove Contacts
dockutil --remove Calendar 
dockutil --remove Notes
dockutil --remove Reminders
dockutil --remove Maps
dockutil --remove Photos
dockutil --remove Messages
dockutil --remove FaceTime
dockutil --remove iTunes
dockutil --remove iBooks
dockutil --remove App\ Store

dockutil --move 'Mail' --position 1
dockutil --add /Applications/iTerm.app --position 2
dockutil --add /Applications/Google\ Chrome.app/ --position 3