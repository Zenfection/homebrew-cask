cask "permute-mod" do
  version "3.10.9"
  sha256 "73bccea44202c1026e6d8caa1765fc7031268b18812a9286f08134c873bac452"

  url "https://dl.dropboxusercontent.com/scl/fi/gdgn643ptocbvm8ldlhz2/Permute-3-3.10.9.dmg?rlkey=qen81yo4oqxqy7ddea0qybref&dl=0"
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
