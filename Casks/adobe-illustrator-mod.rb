cask "adobe-illustrator-mod" do
    version "26.4.1"
    sha256 "576d3109cdee81bb2541e60e6a736ff678c116fb95cbbf597c2bdc32e36693eb"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Adobe.Illustrator_#{version}.zip"
    name "Adobe Illustrator"
    desc "The industry-standard vector graphics software lets you create logos, icons, drawings, typography, and illustrations for print, web, video, and mobile."
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true

    pkg "AntiCC_1.7.pkg"

    installer script: {
        executable:   "#{staged_path}/Illustrator/Install.app/Contents/MacOS/Install",
        args:         ["--mode=silent"],
        sudo:         true,
        print_stderr: false,
    }

    pkg "Illustrator 26.4.1 U2B PATCH [RiD].pkg"

end
