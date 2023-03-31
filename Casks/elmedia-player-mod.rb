cask "elmedia-player-mod" do
  version "8.15"
  sha256 "a94b920ba4ef968880b1e04bfd41c6faf2c1a046670f7c7ba8939aae483304d0"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Elmedia.Player_#{version}.dmg"
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