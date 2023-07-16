cask "downie-mod" do
  version "4.6.21"
  sha256 "97e987264b385ae02e38b4983989c87136ab37be3331e8839370c02d6f0c2e36"

  url "https://dl.dropboxusercontent.com/scl/fi/l1vniw2jwouprcl61bkqj/Downie_4.6.21.dmg?rlkey=fxn0imz9g7rzbnj6apz5k3rod&dl=0"
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
