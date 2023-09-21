cask "affinity-publisher-mod" do
  version "2.2.0"
  sha256 "c8a7e1390905431e83ed621ed99d11a3457133156eda5b34ecda360920fa11e4"

  url "https://dl.dropboxusercontent.com/s/bnqlu17h6bg6bv5/Affinity%20Publisher%202%202.2.0.dmg?dl=0"
  name "Affinity Publisher #{version.major}"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://forum.affinity.serif.com/index.php?/topic/170203-latest-affinity-v2-releases-on-each-platform-by-store/"
    regex(/Affinity\s*Publisher\s*\d+\s*\|\s*Affinity\s*Store\s*\|\s*macOS[^|]*\|\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Affinity Publisher #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Affinity Publisher #{version.major}",
    "~/Library/Caches/com.seriflabs.affinitypublisher#{version.major}",
    "~/Library/HTTPStorages/com.seriflabs.affinitypublisher#{version.major}",
    "~/Library/Preferences/com.seriflabs.affinitypublisher#{version.major}.plist",
    "~/Library/Saved Application State/com.seriflabs.affinitypublisher#{version.major}.savedState",
    "~/Library/WebKit/com.seriflabs.affinitypublisher#{version.major}",
  ]
end