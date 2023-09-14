cask "geekbench-mod" do
  version "6.2.0"
  sha256 "445a43b821ed434482c5249e495fc29a8f1f90fee065542cc9ba37743a8412a6"
  url "https://dl.dropboxusercontent.com/s/1gwflowowl8vjnb/Geekbench%206%206.2.0.dmg?dl=0"
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
