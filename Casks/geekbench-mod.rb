cask "geekbench-mod" do
  version "5.4.5"
  sha256 "c05d42dd037e8d1d2056ee49e02a3a23c779a6038167742f6121145611a2b7f6"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Geekbench.#{version.major}_#{version}.dmg"
  name "Geekbench"
  desc "Tool to measure the computer system's performance"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates false

  app "Geekbench #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.primatelabs.Geekbench#{version.major}",
    "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
    "~/Library/Saved Application State/com.primeatelabs.Geekbench#{version.major}.savedState",
  ]
end
