cask "jump-desktop-mod" do
  version "9.0.99"
  sha256 "c0b55bd46829645c6c0c01b1261a5a21f59bcf485b912e8400cb0678a276da16"

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