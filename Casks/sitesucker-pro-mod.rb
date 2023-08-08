cask "sitesucker-pro-mod" do
  version "5.1.10"
  sha256 "257fc0122e3ccab924acedaf68aa1db6a7415bd294652992c168f7be698081a7"
  url "https://dl.dropboxusercontent.com/scl/fi/mlt0jzgug9iz4qvqr2mcz/SiteSucker-Pro-v5.1.10.dmg?rlkey=6ub15x5r3kq8wxenkj84um3a1&dl=0"

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
