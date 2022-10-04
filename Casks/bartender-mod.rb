cask "bartender-mod" do
  version "4.2.11"
  sha256 "c2252a2613e15f0c0d6f4e129fb5beb841165b0148d2a0490b948c50b06033b2"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Bartender.#{version.major}_#{version}.dmg"

  name "Bartender"
  desc "Menu bar icon organizer"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://www.macbartender.com/B2/updates/AppcastB#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Bartender #{version.major}.app"

  uninstall delete:    [
    "/Library/Audio/Plug-Ins/HAL/BartenderAudioPlugIn.plugin",
    "/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper",
    "/Library/ScriptingAdditions/BartenderHelper.osax",
    "/System/Library/ScriptingAdditions/BartenderSystemHelper.osax",
  ],
            launchctl: "com.surteesstudios.Bartender.BartenderInstallHelper",
            quit:      "com.surteesstudios.Bartender"

  zap trash: [
    "~/Library/Caches/com.surteesstudios.Bartender",
    "~/Library/Cookies/com.surteesstudios.Bartender.binarycookies",
    "~/Library/Preferences/com.surteesstudios.Bartender.plist",
  ]
end
