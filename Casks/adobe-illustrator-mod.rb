cask "adobe-illustrator-mod" do
    version "26.4.1"
    sha256 "e0e7e78096a3855b600e992aa4ccb46dbc6cf6fd0bbb413761e8ccaaa9934b55"

    url "https://raw.githubusercontent.com/Zenfection/homebrew-cask/main/Installer/adobe-illustrator-mod.sh"
    name "Adobe Illustrator"
    desc "The industry-standard vector graphics software lets you create logos, icons, drawings, typography, and illustrations for print, web, video, and mobile."
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true

    installer script: {
        executable: "adobe-illustrator-mod.sh",
        sudo:         true,
    }

    uninstall launchctl: [
        "application.com.adobe.illustrator.*",
    ],
    delete:    "/Applications/Adobe Illustrator 2022/"

    zap trash: [
        "~/Library/Preferences/Adobe/Adobe Illustrator/26.4.1/",
    ]

end
