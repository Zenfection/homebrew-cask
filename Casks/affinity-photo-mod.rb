cask "affinity-photo-mod" do
  version "2.2.0"
  sha256 "15011b4931119e5d8101969ccabe9331afc5b6dba93b9f2b41c7d4a23963c411"

  url "https://www.dropbox.com/s/5f7chc7m6sh7m9b/Affinity%20Photo%202%202.2.0.dmg?dl=0"
  name "Affinity Photo #{version.major}"
  desc "Professional image editing software"
  homepage "https://affinity.serif.com/en-us/photo/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/170203-latest-affinity-v2-releases-on-each-platform-by-store/"
    regex(/Affinity\s*Photo\s*\d+\s*\|\s*Affinity\s*Store\s*\|\s*macOS[^|]*\|\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity Photo #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Affinity Photo 2",
    "~/Library/Caches/com.seriflabs.affinityphoto2",
    "~/Library/HTTPStorages/com.seriflabs.affinityphoto2",
    "~/Library/Preferences/com.seriflabs.affinityphoto2.plist",
    "~/Library/Saved Application State/com.seriflabs.affinityphoto2.savedState",
    "~/Library/WebKit/com.seriflabs.affinityphoto2",
  ]
end