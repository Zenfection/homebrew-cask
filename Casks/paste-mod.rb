cask "paste-mod" do
    version "2.3.8"
    sha256 "9488d037adc6544e4f63fca1149ede6a17c311bc21e6bd4a43de87124f8d7896"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Paste_#{version}.dmg"
    name "Paste"
    desc "Paste is a new way to copy and paste for your Mac. It keeps everything you’ve ever copied and lets you use your clipboard history anytime you need it. It recognizes and stores text, images, links, files, and any other type of content, and generates informative previews for easy browsing."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Paste.app"
end