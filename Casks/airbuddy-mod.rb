cask "airbuddy" do
    version "2.6.3,602"
    sha256 ""
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/AirBuddy_#{version}.dmg"
    name "AirBuddy"
    desc "AirPods companion app"
    homepage "https://airbuddy.app/"
  
    livecheck do
      url "https://su.airbuddy.app/kCRSAmcjBc/appcast_hyeon.xml"
      strategy :sparkle
    end
  
    auto_updates true
    depends_on macos: ">= :mojave"
  
    app "AirBuddy.app"
  
    zap trash: [
      "~/Library/Application Scripts/codes.rambo.AirBuddy*",
      "~/Library/Caches/codes.rambo.AirBuddy",
      "~/Library/Caches/codes.rambo.AirCore",
      "~/Library/Containers/codes.rambo.AirBuddy*",
      "~/Library/Group Containers/*.group.codes.rambo.AirBuddy",
      "~/Library/HTTPStorages/codes.rambo.AirBuddy.binarycookies",
      "~/Library/LaunchAgents/codes.rambo.AirBuddyHelper.plist",
      "~/Library/Preferences/codes.rambo.AirBuddy.plist",
      "~/Library/SyncedPreferences/codes.rambo.AirBuddy.plist",
    ]
  end