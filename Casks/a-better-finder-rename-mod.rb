cask "a-better-finder-rename-mod" do
    version "11.57"
    sha256 "deeb23d962fb8c037a7fd64b9596ad242c1f2bc562372143013a76db9a61b4e6"
  
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