cask "bartender-mod" do
  version "5.0.39"
  sha256 "0186f3501f4ec75892a51bd68da064e7fbb44247b25cf4324f490b4410c35dac"
  url "https://dl.dropboxusercontent.com/s/gj7cclo2i7whsqe/Bartender%205%205.0.39.dmg?dl=0"

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
