cask "affinity-designer-mod" do
  version "2.2.0"
  sha256 "c5bf23ce26a7fe77fa47bfb3d3a8e5063c3bd8f9ae72c3cf8e39e17a0b748a51"

  url "https://dl.dropboxusercontent.com/s/muc4sgp8qe7wdat/Affinity%20Designer%202%202.2.0.dmg?dl=0"
  name "Affinity Designer #{version.major}"
  desc "Professional graphic design software"
  homepage "https://affinity.serif.com/en-us/designer/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/170203-latest-affinity-v2-releases-on-each-platform-by-store/"
    regex(/Affinity\s*Designer\s*\d+\s*\|\s*Affinity\s*Store\s*\|\s*macOS[^|]*\|\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity Designer #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Affinity Designer 2",
    "~/Library/Caches/com.seriflabs.affinitydesigner2",
    "~/Library/HTTPStorages/com.seriflabs.affinitydesigner2",
    "~/Library/Preferences/com.seriflabs.affinitydesigner2.plist",
    "~/Library/Saved Application State/com.seriflabs.affinitydesigner2.savedState",
    "~/Library/WebKit/com.seriflabs.affinitydesigner2",
  ]
end