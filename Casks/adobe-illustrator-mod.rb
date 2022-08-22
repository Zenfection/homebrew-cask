cask "adobe-illustrator-mod" do
    version "26.4.1"
    sha256 "2aaaf8dde8f1e27f805e6aed019e25e4456c60832bd4de43589a4914323c41de"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Adobe.Illustrator_#{version}.dmg"
    name "Adobe Illustrator"
    desc "The industry-standard vector graphics software lets you create logos, icons, drawings, typography, and illustrations for print, web, video, and mobile."
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true

    installer script: {
        executable:   "#{staged_path}/Install.app/Contents/MacOS/Install",
        args:         ["--mode=silent"],
        sudo:         false,
        print_stderr: false,
    }

    pkg "Illustrator 26.4.1 U2B PATCH [RiD].pkg"
    uninstall 
        pkgutil:   [

        ],
        launchctl: [

        ],
        delete: '/Applications/Adobe Illustrator/'

    zap trash: [

    ]
end
