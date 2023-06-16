cask "permute-mod" do
  version "3.10.5"
  sha256 "a0fd24d28f81a93f50f652e53cc4f686ffb003483fcb3d45108d836700405b59"

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
