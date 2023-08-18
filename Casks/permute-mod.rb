cask "permute-mod" do
  version "3.10.8"
  sha256 "ffc5a3c7977c094992edaa796ec32b2525ea46f2d76beb0d55e5ae2cc4f770aa"

  url "https://dl.dropboxusercontent.com/s/q6l6s2ilwwwchz1/Permute%203%203.10.8.dmg?dl=0"
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
