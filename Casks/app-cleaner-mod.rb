cask "app-cleaner-mod" do
    version "8.0.2"
    sha256 "5591729e038a4141c06abbc38300093039e52fa103cc48308db62e8170e375f8"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/App.Cleaner_#{version}.dmg"
    name "Nektony App Cleaner & Uninstaller"
    desc "Uninstaller and cleaning assistant"
    homepage "https://nektony.com/mac-app-cleaner"
  
    livecheck do
      url "https://nektony.com/pro-support/app-cleaner/update/update.xml"
      strategy :sparkle
    end
  
    app "App Cleaner #{version.major}.app"
  
    zap trash: [
      "~/Library/Application Scripts/com.nektony.App-Cleaner-Pro",
      "~/Library/Application Support/com.nektony.App-Cleaner-Pro",
      "~/Library/Caches/com.nektony.App-Cleaner-Pro",
      "~/Library/Containers/com.nektony.StartupDiskFull",
      "~/Library/Preferences/com.nektony.App-Cleaner-Pro.plist",
      "~/Library/Saved Application State/com.nektony.App-Cleaner-Pro.savedState",
    ]
  end