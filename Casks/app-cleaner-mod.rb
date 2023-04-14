cask "app-cleaner-mod" do
    version "8.1.2"
    sha256 "b99d2386f1e63ab154dd22136b0228dafa15e5c74a27d495ae51e1df04ecf6f8"
  
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