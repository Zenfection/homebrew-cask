cask "dockview-mod" do
  version "1.3.4"
  sha256 "b4b015d00cd036bcf62f30aa7ad29bae882f597e78eed6266f414e56f589b620"
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
