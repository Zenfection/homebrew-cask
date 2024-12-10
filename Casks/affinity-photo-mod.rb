cask "affinity-photo-mod" do
  version "2.5.6"
  sha256 "61dadf16d0870b6a2ce347d936e11318792b6cd0231134fbd78a158122cca54b"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Affinity_Photo_#{version}.dmg"
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