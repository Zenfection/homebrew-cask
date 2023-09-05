cask "bettermouse-mod" do
  version "1.5.4028"
  sha256 "4699abf28c41e4aefe5f11128f2dd997f0ae15304640c7669648dfe084d1d33e"

  url "https://dl.dropboxusercontent.com/scl/fi/ikuo48jwdyped7u1z14jo/BetterMouse-v1.5-4028.dmg?rlkey=5vbq3lfpr27qt0w4wn21gwm8x&dl=0"
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