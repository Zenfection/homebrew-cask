cask "geekbench-mod" do
  version "6.2.1"
  sha256 "f7c31118f1cbd3e4a3d488857bd2c28bc6e7f2914b2e7d4e17fa2e94fd8c6102"
  url "https://dl.dropboxusercontent.com/s/omdqiy8rvol1nlt/Geekbench%206%206.2.1.dmg?dl=0"
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
