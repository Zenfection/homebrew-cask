cask "app-cleaner-mod" do
  version "8.4.2"
  sha256 "cff0eea3064cc9a69215d7cc652cfd863a000731a2f93a2edb64965d55f43954"

  url "https://github.com/Zenfection/macos/releases/download/1.0/App.Cleaner_#{version}.dmg"
  name "Nektony App Cleaner & Uninstaller"
  desc "Uninstaller and cleaning assistant"
  homepage "https://nektony.com/mac-app-cleaner"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/app-cleaner/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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