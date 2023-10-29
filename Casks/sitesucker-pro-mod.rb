cask "sitesucker-pro-mod" do
  version "5.1.13"
  sha256 "c1e519673cac8ab11bbac2048789ace13f2ff2c766cd4036611c15701fe1fe37"
  url "https://github.com/Zenfection/macos/releases/download/1.0/SiteSucker_#{version}.dmg"

  name "SiteSucker Pro"
  desc "Website downloader tool"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://ricks-apps.com/osx/sitesucker/history.html"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SiteSucker.app"

  zap trash: [
    "~/Library/Application Scripts/us.sitesucker.mac.sitesucker-pro",
    "~/Library/Containers/us.sitesucker.mac.sitesucker-pro",
  ]
end
