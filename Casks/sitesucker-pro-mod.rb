cask "sitesucker-pro-mod" do
  version "5.1.1"
  sha256 "0461c20655e598395a7a20f6aebc148a68a33c31add95de30ca20c4bf6df8f16"
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
