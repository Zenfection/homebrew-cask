cask "geekbench-mod" do
  version "6.1.0"
  sha256 "8d00367c6d34d60aaccadd56159ae6c17c52e35be83ee501f543cb164c05f6af"
  url "https://dl.dropboxusercontent.com/s/rtpubb8p5ayb3eu/Geekbench_6.1.0.dmg?dl=0"
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
