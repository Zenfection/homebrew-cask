cask "bettermouse-mod" do
  version "1.5.3963"
  sha256 "81e586a4902792269ca91c0fd6425f2c9eefc5222dfd0c5157da7890b2994944"

  url "https://dl.dropboxusercontent.com/scl/fi/7yph4x0h5rul8ts2zj75f/BetterMouse_1.5_-3963.dmg?rlkey=xas1npavkazsjud5h9ogxq7su&dl=0"
  name "BetterMouse"
  desc "Utility improving 3rd party mouse performance and functionalities"
  homepage "https://better-mouse.com/"

  livecheck do
    url :homepage
    regex(/Version (\d+(?:\.\d+)+)/i)
  end

  app "BetterMouse.app"

  uninstall quit: bundle_id = "com.naotanhaocan.BetterMouse"

  zap trash: [
    "~/Library/Application Support/BetterMouse",
    "~/Library/Caches/#{bundle_id}",
    "~/Library/HTTPStorages/#{bundle_id}*",
    "~/Library/Preferences/#{bundle_id}.plist",
    "~/Library/Saved Application State/#{bundle_id}.savedState",
  ]
end