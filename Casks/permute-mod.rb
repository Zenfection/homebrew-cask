cask "permute-mod" do
  version "3.10.6"
  sha256 "df983ae4ba293b23dc4bfc7cead3f451ebc624d058f9a6e010c005f862752260"

  url "https://dl.dropboxusercontent.com/scl/fi/ipblur61j86bikjo6fbtm/Permute_3.10.6.dmg?rlkey=3axa9y4ebwid2rupqd0nxbtgm&dl=0"
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
