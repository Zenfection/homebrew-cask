cask "cleanmymac-mod" do
  version "4.12.3"
  sha256 "19fd806ed6807725b37d2c2b32651631af21c2a2c1f9a8986e60f1bfb0d13808"

  url "https://github.com/Zenfection/macos/releases/download/1.0/CleanMyMac.X_#{version}.dmg",
      verified: "dl.devmate.com/"
  name "CleanMyMac X"
  desc "Tool to remove unnecessary files and folders from disk"
  homepage "https://github.com/zenfection"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "cleanmymac-zh"

  app "CleanMyMac X.app"

  uninstall delete:     [
    "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.major}.Agent.plist",
    "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
  ],
            launchctl:  [
              "com.macpaw.CleanMyMac#{version.major}.Agent",
              "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.CleanMyMac#{version.major}.Menu",
              "com.macpaw.CleanMyMac#{version.major}.Scheduler",
              "com.macpaw.CleanMyMac#{version.major}.Updater",
            ],
            login_item: "CleanMyMac #{version.major} Menu",
            quit:       [
              "com.macpaw.CleanMyMac#{version.major}",
              "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
              "com.macpaw.CleanMyMac#{version.major}.Menu",
            ]

  zap trash: [
    "/Users/Shared/CleanMyMac X Menu",
    "/Users/Shared/CleanMyMac X",
    "~/Library/Application Scripts/com.macpaw.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Application Support/CleanMyMac X Menu",
    "~/Library/Application Support/CleanMyMac X",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.scheduler.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.sfl*",
    "~/Library/Caches/CleanMyMac #{version.major}",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.CleanMyMac#{version.major}.help*",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Menu",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Scheduler",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Updater",
    "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Containers/com.macpaw.CleanMyMac#{version.major}.CleanMyMacWidget",
    "~/Library/Group Containers/*.com.macpaw.CleanMyMac#{version.major}",
    "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.Updater.plist",
    "~/Library/Logs/CleanMyMac #{version.major}.log",
    "~/Library/Logs/CleanMyMac X Menu/HealthMonitor",
    "~/Library/Logs/com.macpaw.CleanMyMac#{version.major}",
    "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
    "~/Library/Preferences/com.macpaw.cleanmymac#{version.major}.Menu.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
    "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.Scheduler.plist",
    "~/Library/WebKit/com.macpaw.CleanMyMac#{version.major}",
    "~/Pictures/Photos Library.photoslibrary/private/com.macpaw.CleanMyMac#{version.major}",
  ]
end
