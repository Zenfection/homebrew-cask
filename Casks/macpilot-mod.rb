cask "macpilot" do
    version "15.0"
    sha256 "a194630eec45a5c25d471c68d40ceb17d9542369d7f7945e165f1cd4a5b9718e"
    url "https://dl.dropboxusercontent.com/scl/fi/xp7wl3yoi9t2exh2gsh0i/MacPilot_15.0.dmg?rlkey=eoz0jn27tpxx09031tz79dbi4&dl=0"
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