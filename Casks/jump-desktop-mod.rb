cask "jump-desktop-mod" do
  version "8.10.8"
  sha256 "5bb2c1f935cb87a9368de97a640f3e8ce28e5935e6fd6e65196fded6c885e199"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Jump.Desktop_#{version}.dmg",
      user_agent: :fake
  name "Jump Desktop"
  desc "Remote desktop application"
  homepage "https://jumpdesktop.com/#jdmac"

  livecheck do
    url "https://mirror.jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Jump Desktop.app"

  zap trash: [
    "~/Documents/JumpDesktop",
    "~/Library/Caches/com.p5sys.jump.mac.viewer.web",
    "~/Library/Cookies/com.p5sys.jump.mac.viewer.web.binarycookies",
  ]
end