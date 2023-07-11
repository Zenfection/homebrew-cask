cask "app-cleaner-mod" do
    version "8.2.1"
    sha256 "a3562c95e71c1183ca00f741f3905cb494766dcbe332135c554d73bc3158daca"

    url "https://dl.dropboxusercontent.com/scl/fi/fap94tweuvivm2eosafhs/App_Cleaner_8.2.1.dmg?rlkey=vojz14upaht7zkubcwdhgacw0&dl=0"
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