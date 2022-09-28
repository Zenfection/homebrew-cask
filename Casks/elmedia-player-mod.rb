cask "elmedia-player-mod" do
  version "8.8"
  sha256 "cda988b2753a6094ca094510460c3d1a0bb20ca86ed6cf3517443c943370d561"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Elmedia_Player_#{version}.dmg"
  name "Elmedia Player"
  desc "Video and audio player"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://cdn.electronic.us/products/elmedia/mac/update/settings.xml"
    strategy :sparkle
  end

  app "Elmedia Player.app"

  zap trash: [
    "~/Library/Caches/com.Eltima.ElmediaPlayer",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.LSSharedFileList.plist",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.plist",
    "~/Library/Preferences/com.eltima.activator.xml",
  ]
end