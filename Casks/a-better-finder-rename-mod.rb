cask "a-better-finder-rename-mod" do
    version "12.01"
    sha256 "d28a079bd5a8869725959dd30a517b4df0e05d34a9c2941045880b2e1ff18002"

    url "https://dl.dropboxusercontent.com/s/z8y4pue7p8ir6p5/A%20Better%20Finder%20Rename%2012%2012.01.dmg?dl=0"
    name "A Better Finder Rename"
    desc "Renamer for files, music and photos"
    homepage "https://www.publicspace.net/ABetterFinderRename/"

    auto_updates true

    app "A Better Finder Rename #{version.major}.app"

    zap trash: [
      "~/Library/Application Support/A Better Finder Rename #{version.major}",
      "~/Library/Caches/com.apple.helpd/Generated/net.publicspace.abfr#{version.major}.help*",
      "~/Library/Caches/net.publicspace.abfr#{version.major}",
      "~/Library/Cookies/net.publicspace.abfr#{version.major}.binarycookies",
      "~/Library/Preferences/net.publicspace.abfr#{version.major}.plist",
      "~/Library/Saved Application State/net.publicspace.abfr#{version.major}.savedState",
    ]
end