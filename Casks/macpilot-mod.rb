cask "macpilot" do
    version "15.0.2"
    sha256 "d1308fe2ff10a3ccd288f5f3b7cc416fe1fe40e0e6cfe374632c39e0fa0167aa"
    url "https://github.com/Zenfection/macos/releases/download/1.0/MacPilot_#{version}.dmg"
    name "MacPilot"
    desc "Graphical user interface for the command terminal"
    homepage "https://www.koingosw.com/products/macpilot/"

    depends_on macos: ">= :catalina"

    app "MacPilot.app"

    zap trash: [
        "~/Library/Application Support/com.koingosw.MacPilot",
        "~/Library/Caches/com.koingosw.MacPilot",
        "~/Library/Preferences/com.koingosw.MacPilot.plist",
        "~/Library/Saved Application State/com.koingosw.MacPilot.savedState",
    ]
end