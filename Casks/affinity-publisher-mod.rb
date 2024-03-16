cask "affinity-publisher-mod" do
  version "2.4.0"
  sha256 "38bad195754525b564728acf8063702edde8669dc9fb965e55ba74f079f7c173"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Affinity_Publisher_#{version}.dmg"
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