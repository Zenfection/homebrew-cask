cask "app-cleaner-mod" do
    version "7.8.1"
    sha256 "20ab792ce534ff1a8a8c64015fcb9656e97baca75a8714b0a486ec7468ccaae8"
  
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