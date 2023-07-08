cask "airbuddy-mod" do
    version "2.6.2"
    sha256 "1556944621f0326e754a9371f109b8361693261f7ec4222edf43c20a7662ead2"
  
    url "https://dl.dropboxusercontent.com/scl/fi/w2xd7ylwqx5kbz6csiogm/Airbuddy_2.6.2.dmg?rlkey=sgy56e84yodw1n08ddss3dssc&dl=0"
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