cask "geekbench-mod" do
  version "5.4.6"
  sha256 "205a821a7dfbaab2403102b423efac391af7d043cd64d83d1c3e27382094f945"
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
