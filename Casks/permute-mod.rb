cask "permute-mod" do
  version "3.9.3"
  sha256 "e412366df59b671759df9c1b16153365ce321408b44fa137c36a9cc3f72a7416"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Permute.3_#{version}.dmg"
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
