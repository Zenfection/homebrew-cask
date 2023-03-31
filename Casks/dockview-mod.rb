cask "dockview-mod" do
  version "1.3.8"
  sha256 "8761814bf77dfb15c943942654ebd41cf5cf84b766cfe5f8bc6060166644d623"
  url "https://github.com/Zenfection/macos/releases/download/1.0/DockView_#{version}.dmg"
  name "dockview"
  desc "Utility to preview application windows in the dock"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://macplus-software.com/downloads/DockViewStandard.xml"
    strategy :sparkle
  end

  auto_updates true

  app "DockView.app"

  zap trash: [
    "~/Library/Caches/com.sergey-gerasimenko.DockView",
    "~/Library/Preferences/com.sergey-gerasimenko.DockView.plist",
    "~/Library/Application Support/com.sergey-gerasimenko.DockView",
  ]
end
