cask "elmedia-player-mod" do
  version "8.13"
  sha256 "bb2eea60bbea67bfc5d68ff98c67fea059819ef1ee02c02c86fb23e73fe36c3d"

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