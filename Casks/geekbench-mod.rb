cask "geekbench-mod" do
  version "6.6.2"
  sha256 "85fa8414d8853f90ed4edb04eafcfc3705ae12550cdee78daee40545ace3ea29"
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
