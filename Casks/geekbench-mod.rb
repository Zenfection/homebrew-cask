cask "geekbench-mod" do
  version "5.5.5"
  sha256 "791a5ce2abe52cbe1c6c0a3777eeca3ed30dc55b38dc72ca01ebde2f37d38375"
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
