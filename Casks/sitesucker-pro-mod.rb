cask "sitesucker-pro-mod" do
  version "4.4.1"
  sha256 "f305490236c509dea6c27af661e2c2d00e27b609bb51ff9500b5385c390ded08"
  url "https://github.com/Zenfection/macos/releases/download/1.0/SiteSuckerPRO_#{version}.dmg"

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
