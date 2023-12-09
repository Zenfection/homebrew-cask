cask "sensei-mod" do
    version "1.5.9"
    sha256 "909e51fb98dc01fac6276f88459e1140a7a0ba09258b2dca859297737ffce0f5"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Sensei_#{version}.dmg"
    name "Sensei"
    desc "Monitors the computer system and optimizes its performance"
    homepage "https://github.com/zenfection"

    livecheck do
      url "https://api.appcenter.ms/v0.1/public/sparkle/apps/51fc066a-f4b4-49ec-b966-b2f476d2eede"
      strategy :sparkle
    end

    auto_updates true
    depends_on macos: ">= :catalina"

    app "Sensei.app"

    uninstall delete:    [
      "/Library/LaunchAgents/org.cindori.SenseiMonitor.plist",
      "/Library/LaunchDaemons/org.cindori.SenseiDaemon.plist",
      "/Library/LaunchDaemons/org.cindori.SenseiHelper.plist",
      "/Library/PrivilegedHelperTools/org.cindori.SenseiTool",
    ],
              launchctl: "org.cindori.SenseiTool"

    zap trash: [
      "~/Library/Application Support/org.cindori.Sensei",
      "~/Library/Application Support/Sensei",
      "~/Library/Caches/org.cindori.Sensei",
      "~/Library/Cookies/org.cindori.Sensei.binarycookies",
      "~/Library/Preferences/org.cindori.Sensei.plist",
      "~/Library/Saved Application State/org.cindori.Sensei.savedState",
    ]
  end