cask "app-cleaner-mod" do
    version "8.2.3"
    sha256 "8f4afa9b3d9d28fc868175c6db66bf1cd82449f32ae2d0bbeab6195c10a4f162"

    url "https://dl.dropboxusercontent.com/s/ya9357rs994xuds/App%20Cleaner%208.2.3.dmg?dl=0"
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