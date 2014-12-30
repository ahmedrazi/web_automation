#!/bin/bash -e
cd /home/ahmedr/Minlaw_project/
#source "$HOME/.rvm/scripts/rvm"
#[[ -s ".rvmrc" ]] && source .rvmrc
bundle install
HEADLESS=true cucumber features/cms_login.feature

