cask "adobe-illustrator-mod" do
    version "26.4.1"
    sha256 "f2ea07d001a86cca53ea0987ef1f4a1011275ca266fb3f14a4880816574dbc77"

    url "https://raw.githubusercontent.com/Zenfection/homebrew-cask/main/Installer/adobe-illustrator-mod.sh"
    name "Adobe Illustrator"
    desc "The industry-standard vector graphics software lets you create logos, icons, drawings, typography, and illustrations for print, web, video, and mobile."
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true

    installer script: {
        executable: "adobe-illustrator-mod.sh",
        args:         ["--mode=silent"],
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
