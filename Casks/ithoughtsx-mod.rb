cask "ithoughtsx-mod" do
  version "9.4.0"
  sha256 "1b0d025e5dc155d2ee14629856c2198bc7a233598166810639586b7a7142e575"

  url "https://www.dropbox.com/scl/fi/fv9tsd1v7op89yusvrhua/iThoughtsX-9.4.dmg?rlkey=vzivizhppyebz5yzy1ll5rzw1&dl=0",
  name "iThoughtsX"
  desc "Mind mapping tool"
  homepage "https://www.toketaware.com/ithoughts-osx"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "iThoughtsX.app"

  zap trash: [
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.toketaware.ios.ithoughts/",
    "~/Library/Application Support/com.toketaware.ithoughtsx/",
    "~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.toketaware.ios.ithoughts/",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.toketaware.ithoughtsx/",
    "~/Library/Caches/com.toketaware.ithoughtsx/",
    "~/Library/Preferences/com.toketaware.ithoughtsx.plist",
  ]
end