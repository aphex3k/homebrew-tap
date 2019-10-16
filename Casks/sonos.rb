cask 'sonos' do
  version '10.4'
  sha256 '139c3c978dce9dc43648847bbce44c9781ba939a6c28fc39bca99e97a0c3da81'

  url 'https://update.sonos.com/software/mac/mdcr/SonosDesktopController104.dmg'
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
