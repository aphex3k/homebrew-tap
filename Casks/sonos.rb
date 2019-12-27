cask 'sonos' do
  version '10.6'
  sha256 '30269870a7fded8897ab324a1d93a01252e7a045ec5ca6bf937952821fc401a1'

  url 'https://update.sonos.com/software/mac/mdcr/SonosDesktopController106.dmg'
  name 'Sonos Desktop Controller for Mac'
  homepage 'https://www.sonos.com/en-us/support'

  app 'Sonos.app'

  uninstall quit: 'com.sonos.macController'

  zap trash: [
               '~/Library/Caches/com.sonos.macController',
               '~/Library/Caches/com.crashlytics.data/com.sonos.macController ',
               '~/Library/Logs/Sonos',
               '~/Library/Application Support/Sonos',
               '~/Library/Saved Application State/com.sonos.macController.savedState',
             ]
end
