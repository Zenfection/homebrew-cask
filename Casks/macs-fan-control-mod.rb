cask "macs-fan-control-mod" do
    version "1.5.15"
    sha256 "4689e4bc72a9209ec62514b93dde9075ecb6805b88b47c9e71271384174d045f"

    url "https://dl.dropboxusercontent.com/scl/fi/gm24cpy0frc7bunozlr8x/Macs-Fan-Control-Pro-v1.5.16.dmg?rlkey=zji5h6t0vg342bsx3lao3okq9&dl=0"
    name "Macs Fan Control"
    desc "Controls and monitors all fans on Apple computers"
    homepage "https://crystalidea.com/macs-fan-control"


    auto_updates true
    depends_on macos: ">= :high_sierra"

    app "Macs Fan Control.app"

    uninstall signal: ["TERM", "com.crystalidea.MacsFanControl"]

    zap trash: "~/Library/Preferences/com.crystalidea.macsfancontrol.plist"
end