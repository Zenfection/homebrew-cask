cask "macpilot" do
    version "16.0"
    sha256 "6fe3444b2a647b28ecb4f3a0dc8afb9e85dac483847ddef5cd1e53e1f6a569d0"
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