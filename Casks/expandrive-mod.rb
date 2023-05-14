cask "expandrive-mod" do
    version "2023.4.1"
    sha256 "d4123d40d2f84af7f390a77d40f98feebb66ccde4fe04737fc76fcb74fcdd2a4"

    url "https://github.com/Zenfection/macos/releases/download/1.0/ExpanDrive_#{version}.dmg"
    name "ExpanDrive"
    desc "Network drive and browser for cloud storage"
    homepage "https://www.expandrive.com/apps/expandrive/"


    app "ExpanDrive.app"

    zap trash: [
        "~/Library/Application Support/ExpanDrive",
        "~/Library/Preferences/com.expandrive.exfs.plist",
        "~/Library/Preferences/com.expandrive.ExpanDrive*.plist",
        "~/Library/Preferences/com.expandrive.ExpanDrive.helper.plist",
    ]
end