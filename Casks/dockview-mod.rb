cask "dockview-mod" do
  version "1.3.7"
  sha256 "15dd2e09fb17f511396d2d45d92b70a9ac9529848505a3c4d6ebf89d5d80a865"
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
