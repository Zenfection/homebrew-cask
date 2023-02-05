cask "a-better-finder-rename-mod" do
    version "11.59"
    sha256 "573b472e6237be86280d6d0a9d9b18ddf92647a76d0904d050c5a41dff4d3200"
  
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