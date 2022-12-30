cask "elmedia-player-mod" do
  version "8.11"
  sha256 "d8455ec683802a3a15a312f8a5eb155ffe6147c1f0c49d72319d67ca7fb9e622"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Elmedia_Player_#{version}.dmg"
  name "Elmedia Player"
  desc "Video and audio player"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://cdn.electronic.us/products/elmedia/mac/update/settings.xml"
    strategy :sparkle
  end

  app "Elmedia Video Player.app"

  zap trash: [
    "~/Library/Caches/com.Eltima.ElmediaPlayer",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.LSSharedFileList.plist",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.plist",
    "~/Library/Preferences/com.eltima.activator.xml",
  ]
end