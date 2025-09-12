cask "a-better-finder-rename-mod" do
    version "12.14"
    sha256 "ccbc3fedddbc256e152da4eeb10de958037b2579e10be977c5c3610447535b82"

    url "https://github.com/Zenfection/macos/releases/download/1.0/A.Better.Finder.Rename_#{version}.dmg"
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