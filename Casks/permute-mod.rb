cask "permute-mod" do
  version "3.12.1"
  sha256 "ba41dce0a1a49a7e3b155e067258bd25a2f9978cb09ad80f7d689badd10758fa"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Permute_#{version}.dmg"
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
