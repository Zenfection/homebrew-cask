cask "macpilot" do
    version "15.0"
    sha256 "a194630eec45a5c25d471c68d40ceb17d9542369d7f7945e165f1cd4a5b9718e"
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