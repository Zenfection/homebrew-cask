cask "adobe-illustrator-mod" do
    version "26.4.1"
    sha256 "ec147277d5ecf744e566735566d8e2a851944f3ddb37926f2f9b67ae028c26a9"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Adobe.Illustrator_26.4.1.dmg"
    name "Adobe Illustrator"
    desc "The industry-standard vector graphics software lets you create logos, icons, drawings, typography, and illustrations for print, web, video, and mobile."
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true

    pkg "AntiCC_1.7.pkg"

    installer script: {
        executable:   "#{staged_path}/Illustrator 26.4.1 U2B INSTALLER [RiD]/Install.app/Contents/MacOS/Install",
        args:         ["--mode=silent"],
        sudo:         false,
        print_stderr: false,
    }

    pkg "Illustrator 26.4.1 U2B PATCH [RiD].pkg"
end
