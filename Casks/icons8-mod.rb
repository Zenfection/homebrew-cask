cask "icons8-mod" do
  version "5.7.4"
  sha256 "49e5d37c3b8493ebd976ab545b4ead7ea0b588ce0043ef8ff853874cd507c30c"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Icons8_#{version}.dmg"
  name "Icons8 App"
  desc "App for browsing icon, photo and music packages"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://desktop.icons8.com/updates/mac/icons8_cast.xml"
    strategy :sparkle
  end

  app "Icons8.app"

  zap trash: [
    "~/Library/Preferences/com.visualpharm.Icons8.plist",
    "~/Library/Containers/com.visualpharm.StandaloneLoginHelper",
    "~/Library/Caches/com.visualpharm.Icons8",
    '~/Library/Application\ Support/com.visualpharm.Icons8',
    '~/Library/Application\ Scripts/com.visualpharm.StandaloneLoginHelper',
  ]
end
