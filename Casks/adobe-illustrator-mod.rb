cask "adobe-illustrator-mod" do
    version "26.4.1"
    sha256 "3ebf6cc4c83cd9dff89168602192f56c435c9886c7e225e3abc05810b8d33413"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Adobe.Illustrator_#{version}.zip"
    name "Adobe Illustrator"
    desc "The industry-standard vector graphics software lets you create logos, icons, drawings, typography, and illustrations for print, web, video, and mobile."
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true

    pkg "AntiCC_1.7.pkg"

    app "Adobe Illustrator 2022"

    pkg "Illustrator 26.4.1 U2B PATCH [RiD].pkg"

    uninstall launchctl: [
        "application.com.adobe.illustrator.*",
    ],
    delete:    "/Applications/Adobe Illustrator 2022/"

    zap trash: [
        "~/Library/Preferences/Adobe/Adobe Illustrator/26.4.1/",
    ]

end
