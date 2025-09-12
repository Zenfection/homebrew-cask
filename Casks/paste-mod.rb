cask "paste-mod" do
    version "5.0.9"
    sha256 "45d05c076eea5025d6f35a6448169f09453568ba251e0aca4361d87603c00d1b"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Paste_#{version}.dmg"
    name "Paste"
    desc "Paste is a new way to copy and paste for your Mac. It keeps everything you’ve ever copied and lets you use your clipboard history anytime you need it. It recognizes and stores text, images, links, files, and any other type of content, and generates informative previews for easy browsing."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Paste.app"
end