cask "dockview-mod" do
  version "1.03"
  sha256 "fdf9f67125c614bdb9e7cafd7126fa9a274fda647a7d945150e88ac3ccb3dcfe"
  url "https://github.com/Zenfection/macos/releases/download/1.0/DockView_#{version}.dmg"
  name "dockview"
  desc "Utility to preview application windows in the dock"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://macplus-software.com/downloads/DockViewStandard.xml"
    strategy :sparkle
  end

  auto_updates false

  app "DockView.app"

  zap trash: [
    "~/Library/Caches/com.sergey-gerasimenko.DockView",
    "~/Library/Preferences/com.sergey-gerasimenko.DockView.plist",
    "~/Library/Application Support/com.sergey-gerasimenko.DockView",
  ]
end
