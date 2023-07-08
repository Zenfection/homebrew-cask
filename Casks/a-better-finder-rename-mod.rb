cask "a-better-finder-rename-mod" do
    version "11.61"
    sha256 "b751788cdc286d07980b7b77433903a511d02fd62ac04c0ce633f33551c81f4e"
  
    url "https://dl.dropboxusercontent.com/s/a15g60h6zxvmkgk/AdGuard_2.10.0.1239.dmg?dl=0" 
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