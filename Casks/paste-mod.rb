cask "paste-mod" do
    version "3.1.5"
    sha256 "0fac211c2fcd502c12834a5eee2bd51f040940caca1876b5d17889767fa791a5"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Paste_#{version}.dmg"
    name "Paste"
    desc "Paste is a new way to copy and paste for your Mac. It keeps everything you’ve ever copied and lets you use your clipboard history anytime you need it. It recognizes and stores text, images, links, files, and any other type of content, and generates informative previews for easy browsing."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Paste.app"
end