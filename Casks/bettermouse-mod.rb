cask "bettermouse-mod" do
  version "1.5.3792"
  sha256 "638e95cd509124a32b67db5e97fe7afea6c412fa419eb02b007ce6c9655363d6"

  url "https://dl.dropboxusercontent.com/scl/fi/7hokfl8cquk0ilgwdzx6j/BetterMouse-v1.5-3792.dmg?rlkey=3h5uojhapkg0pb8z5ppckdorb&dl=0"
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