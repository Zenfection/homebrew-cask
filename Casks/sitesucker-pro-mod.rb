cask "sitesucker-pro-mod" do
  version "5.1.8"
  sha256 "a41508411503e2e70537eca1409ac329fbaad59f7466f04c3204a95a2844eb34"
  url "https://github.com/Zenfection/macos/releases/download/1.0/SiteSucker.Pro_#{version}.dmg"

  name "SiteSucker Pro"
  desc "Website downloader tool"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://ricks-apps.com/osx/sitesucker/history.html"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SiteSucker Pro.app"

  zap trash: [
    "~/Library/Application Scripts/us.sitesucker.mac.sitesucker-pro",
    "~/Library/Containers/us.sitesucker.mac.sitesucker-pro",
  ]
end
