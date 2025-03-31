cask "paste-mod" do
    version "4.4.2"
    sha256 "8e5ae7abe18c0d2955e635c849b08f305aba7c76a5466ad753a02c441311c2f7"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Paste_#{version}.dmg"
    name "Paste"
    desc "Paste is a new way to copy and paste for your Mac. It keeps everything you’ve ever copied and lets you use your clipboard history anytime you need it. It recognizes and stores text, images, links, files, and any other type of content, and generates informative previews for easy browsing."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Paste.app"
end