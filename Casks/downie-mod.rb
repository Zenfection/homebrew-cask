cask "downie-mod" do
  version "4.5.5"
  sha256 "5bbf05c9af76f18329a4714b9ac812b83e0a2c2fe3a5e2df362bcc263d4cc6f2"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Downie.#{version.major}_#{version}.dmg"
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
