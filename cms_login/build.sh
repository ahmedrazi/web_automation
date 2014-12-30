#!/bin/bash -e
cd /home/rahmed/Final_modules_bkup/Minlaw_project
#cd /home/rahmed/Minlaw_project/
#source "$HOME/.rvm/scripts/rvm"
#[[ -s ".rvmrc" ]] && source .rvmrc
bundle install
HEADLESS=true cucumber features/cms_login.feature

