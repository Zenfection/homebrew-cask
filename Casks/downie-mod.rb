cask "downie-mod" do
  version "4.9.1"
  sha256 "286854211aca772edfe231e21685bf3b2bc8571bd1a5453eb42b75ee6e392586"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Downie_#{version}.dmg"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://software.charliemonroe.net/trial/downie/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Downie #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}-Downie-Extension",
    "~/Library/Preferences/com.charliemonroe.Downie-#{version.major}.plist",
  ]
end
