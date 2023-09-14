cask "downie-mod" do
  version "4.6.27"
  sha256 "3df6b9ece07d94a39f4ed834e653e0d2c07ed189bb02e5f94c606aaa58a170f3"

  url "https://dl.dropboxusercontent.com/s/xm87iu4w8g2w9nf/Downie%204%204.6.27.dmg?dl=0"
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
