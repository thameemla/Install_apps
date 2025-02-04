#! /bin/zsh

# Install Xcode
xcode-select –-install
osascript -e 'display notification "Xcode CLT installed Succesfully!!!" sound name "Submerge" with title "Welcome to DL"'
sleep 3

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/easyosx/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
osascript -e 'display notification "Homebrew installed Succesfully!!!" sound name "Submerge" with title "Welcome to DL"'

apps=(  'firefox' 
        'brave-browser'
        'vlc'
        'protonvpn'
        'google-chrome'
        'free-download-manager'
        'dropbox'
        'db-browser-for-sqlite'
        'whatsapp'
        'pycharm-ce'
        'anydesk'
        'utm'
        'appcleaner'
        'libreoffice'
        'thunderbird'
        'handbrake'
        'keycastr'
        'visual-studio-code'
        'mamp'
        'webex'
        'webex-meetings'
        'telegram'
        'zoom'
        'tor-browser'
        'google-drive'
        'cron'
        'oracle-jdk'
        )

for f in $apps;
do
brew install --cask $f
echo $f installed Successfully!!!
done

osascript -e 'display notification "Apps Installed Successfully!!!" sound name "Submerge" with title "Welcome to DL"'
osascript -e 'display dialog "Apps Installed Successfully!!!" with title "Welcome to DL"'
