cask "permute-mod" do
  version "3.9.6"
  sha256 "bd48198807b581c2c69c630e5c43e35f531652bf148fca51c7f2ade10b928fde"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Permute.#{version.major}_#{version}.dmg"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://software.charliemonroe.net/trial/permute/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Permute #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.charliemonroe.Permute-#{version.major}",
    "~/Library/Preferences/com.charliemonroe.Permute-#{version.major}.plist",
  ]
end
