cask "app-cleaner-mod" do
    version "8.2"
    sha256 "0a04922ab3a0e8f2d875d2292795b08ff133fe6509af321f8b2d8ad3d40336b0"
  
    url "https://dl.dropboxusercontent.com/scl/fi/27elizpnabcpdo3gbvxo2/App.Cleaner_8.2.dmg?rlkey=9gnix01hf0mzcgjdm11btquh9&dl=0"
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