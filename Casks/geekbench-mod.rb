cask "geekbench-mod" do
  version "6.4.0"
  sha256 "6b24f6051bf0ccdeabba8324da6f4bb704b7b7d558292e19665496ab764ecbef"
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
