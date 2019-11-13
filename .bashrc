# ~/.bashrc
# This file contains useful aliases for interacting with connected devices via ADB.

# Instructions:
# Copy the contents of this file into your .bashrc file.
# If you don't have a .bashrc file, simply move this file into your home directory and ensure it is being sourced by your shell.

####################

# Send text to your device. Usage: $ atext https://www.youtube.com/user/rpandey1234
alias atext='adb shell input text'

# Send the BACK keypress to your device
alias aback='adb shell input keyevent KEYCODE_BACK'

# Given a username/password form, log in with the given user. Focus should be on the username edit text.
# Usage: $ adblogin john
alogin() {
  atext "$1" && adb shell input keyevent KEYCODE_TAB && atext password
}
