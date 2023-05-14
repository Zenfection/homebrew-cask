cask "macs-fan-control-mod" do
    version "1.5.15"
    sha256 "ad52c6aa5ceef9d49026986d363e5fb2048c1aba3c26047e96d72bd87440c82d"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Macs.Fan.Control_#{version}.dmg"
    name "Macs Fan Control"
    desc "Controls and monitors all fans on Apple computers"
    homepage "https://crystalidea.com/macs-fan-control"


    auto_updates true
    depends_on macos: ">= :high_sierra"

    app "Macs Fan Control.app"

    uninstall signal: ["TERM", "com.crystalidea.MacsFanControl"]

    zap trash: "~/Library/Preferences/com.crystalidea.macsfancontrol.plist"
end