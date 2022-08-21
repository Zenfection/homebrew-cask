cask "permute-mod" do
  version "3.9.8"
  sha256 "1a71025be409e645298e4c5bb266032d3948fb99e63169b87a108c6e575d4185"

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
