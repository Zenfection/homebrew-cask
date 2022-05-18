cask "dockview-mod" do
  version "1.03"
  sha256 "37979a6350db18a09dadf5abf2e66e616367f4f09365dd742ed5bd655bba9531"
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
