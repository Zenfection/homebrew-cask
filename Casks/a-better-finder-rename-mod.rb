cask "a-better-finder-rename-mod" do
    version "11.51"
    sha256 "011eb0201939d6d8b05b808d8ec6d8648327173cd6308cd2fce38ecd5c4cf2e2"
  
    # tải 2 url

    url {"https://github.com/Zenfection/macos/releases/download/1.0/A.Better.Finder.Rename.11_#{version}.dmg", "https://github.com/Zenfection/macos/releases/download/1.0/A.Better.Finder.Rename.11_#{version}.dmg"}
    name "A Better Finder Rename"
    desc "Renamer for files, music and photos"
    homepage "https://www.publicspace.net/ABetterFinderRename/"
  
    livecheck do
      url "https://www.publicspace.net/app/signed_abfr#{version.major}.xml"
      strategy :sparkle, &:version
    end
  
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