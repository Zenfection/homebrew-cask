cask "elmedia-player-mod" do
  version "8.18"
  sha256 "68bf1e5cb51a84d0e85b6371b9eea9a41704e3eeeaf82bc7576b140b83778706"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Elmedia.Video.Player_#{version}.dmg"
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