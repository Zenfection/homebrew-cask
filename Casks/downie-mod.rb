cask "downie-mod" do
  version "4.6.17"
  sha256 "4b1dada783d537c1cf7e717a437486f710a52112b508007dc366f638e0917cae"

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
