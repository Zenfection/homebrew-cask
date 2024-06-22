cask "blueharvest-mod" do
    version "8.3.0"
    sha256 "47c8567fdbf42fc03064ebc5ae399d636122071e10bc205e7adf6b64a1ba3d57"

    url "https://github.com/Zenfection/macos/releases/download/1.0/BlueHarvest_#{version}.dmg"
    name "BlueHarvest"
    desc "Remove metadata files from external drives"
    homepage "https://zeroonetwenty.com/blueharvest/"

    livecheck do
        url "https://zeroonetwenty.com/blueharvest/release-notes.html"
       regex(/>\s*Version\s+(\d+(?:\.\d+)+)/i)
    end

    auto_updates true
    depends_on macos: ">= :catalina"

    app "BlueHarvest.app"

    uninstall delete:    "/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper#{version.major}",
              launchctl: "com.zeroonetwenty.BlueHarvestHelper#{version.major}",
              quit:      "com.zeroonetwenty.BlueHarvest5"

    zap trash: [
      "~/Library/Caches/com.zeroonetwenty.BlueHarvest5",
      "~/Library/Preferences/com.zeroonetwenty.BlueHarvest5.plist",
    ]
  end