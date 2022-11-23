cask "bartender-mod" do
  version "4.2.16"
  sha256 "9fa72f7c207581dad42fd69ecda60cae54491e1992cc9d75679b629648bdb764"
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
