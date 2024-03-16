cask "affinity-designer-mod" do
  version "2.4.0"
  sha256 "90347cfe9692bcf7654b1566cdb847957777a53bc10e7657d19d15d19fc49c39"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Affinity.Designer_#{version}.dmg"
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