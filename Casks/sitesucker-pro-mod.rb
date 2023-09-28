cask "sitesucker-pro-mod" do
  version "5.1.12"
  sha256 "d8e279d25574a271d3857939159315d1f39021635d25b250f370b87c5d99498b"
  url "https://dl.dropboxusercontent.com/s/trhiqa8zdxkofhb/SiteSucker%20Pro%205.1.12.dmg?dl=0"

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
