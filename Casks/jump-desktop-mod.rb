cask "jump-desktop-mod" do
  version "9.1.9"
  sha256 "ddca1e2398c3a574995eadd0684fb84757aa5537ebb05594bc02b6d593f4650d"

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