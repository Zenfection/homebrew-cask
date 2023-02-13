cask "geekbench-mod" do
  version "5.5.1"
  sha256 "7c197b8c3c9c37a12f1a67fcd2d147f66aeb7ef0e57e78024210707eeda55c8d"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Geekbench.#{version.major}_#{version}.dmg"
  name "Geekbench"
  desc "Tool to measure the computer system's performance"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Geekbench #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.primatelabs.Geekbench#{version.major}",
    "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
    "~/Library/Saved Application State/com.primeatelabs.Geekbench#{version.major}.savedState",
  ]
end
