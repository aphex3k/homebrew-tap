cask 'sonos' do
  version '12.0'
  sha256 '7dcab807a75f9faef5941f96eff3e823771187e9f6fea3892d2674f192c0a02f'

  url 'https://update-software.sonos.com/software/mac/mdcr/SonosDesktopController120.dmg'
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
