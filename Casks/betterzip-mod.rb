cask "betterzip-mod" do
  version "5.3.4"
  sha256 "a0912db18a4b58418d5384e28b010b765871537670a3631aa191833f2b7a308c"

  url "https://dl.dropboxusercontent.com/scl/fi/02bumsxmhiaqxx089mi0d/BetterZip_5.3.4.dmg?rlkey=6dgdh0igfcgxoistomqdz2iv7&dl=0"
  name "BetterZip"
  desc "Utility to create and modify archives"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://macitbetter.com/BetterZip.zip"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "BetterZip.app"

  zap trash: [
    "~/Library/Application Scripts/com.macitbetter.betterzip.findersyncextension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macitbetter.betterzip.sfl*",
    "~/Library/Application Support/com.macitbetter.betterzip",
    "~/Library/Caches/com.apple.helpd/Generated/com.macitbetter.betterzip.help*",
    "~/Library/Caches/com.macitbetter.betterzip",
    "~/Library/Containers/com.macitbetter.betterzip.findersyncextension",
    "~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip",
    "~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip-setapp",
    "~/Library/Preferences/com.macitbetter.betterzip.plist",
    "~/Library/Saved Application State/com.macitbetter.betterzip.savedState",
  ]
end
