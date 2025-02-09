cask "macpilot" do
    version "16.8"
    sha256 "21dab9b5279caa42fddc58b9b8dad39123d3ba6a1e5e99eb6155476beb33ba72"
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