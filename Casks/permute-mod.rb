cask "permute-mod" do
  version "3.9.11"
  sha256 "b4b89ada972ad3854eb075359ef8825168f092bcd4829ecfe0cb115c9ef7fdb6"

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
