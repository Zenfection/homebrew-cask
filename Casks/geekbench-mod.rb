cask "geekbench-mod" do
  version "AI"
  sha256 "da335e826856ae230dec07235218a1536d78a64afe7f028d3afa6fa63f34e641"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Geeekbench_#{version}.dmg"
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
