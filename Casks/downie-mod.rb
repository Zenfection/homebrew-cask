cask "downie-mod" do
  version "4.6.22"
  sha256 "d737857bf23150e82befee1897e2d7a5380a6d5755a95e5654fb2d6ec599f723"

  url "https://dl.dropboxusercontent.com/scl/fi/72rx7jmoaql082ofyukj3/Downie_4_4.6.22.dmg?rlkey=7eb9ksmdh86vhslquuyw53h1p&dl=0"
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
