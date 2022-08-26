cask "adobe-illustrator-mod" do
    version "26.4.1"
    sha256 ""

    url "https://raw.githubusercontent.com/Zenfection/homebrew-cask/main/Installer/adobe-illustrator-mod.sh"
    name "Adobe Illustrator"
    desc "The industry-standard vector graphics software lets you create logos, icons, drawings, typography, and illustrations for print, web, video, and mobile."
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true

    installer script: {
        executable: "adobe-illustrator-mod.sh",
        args:         ["--mode=silent"],
        sudo:         true,
        print_stderr: false,
    }

    uninstall launchctl: [
        "application.com.adobe.illustrator.*",
    ],
    delete:    "/Applications/Adobe Illustrator 2022/"

    zap trash: [
        "~/Library/Preferences/Adobe/Adobe Illustrator/26.4.1/",
    ]

end
