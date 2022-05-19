cask "clipboard-manager-mod" do
    version "2.3.6"
    sha256 "4e88cf1b1b5941535fba448d86b378c988ba04ea746137621d49b93ad68ea4f8"
    url "https://github.com/Zenfection/macos/releases/download/1.0/ClipboardManager_2.3.6.dmg"
    name "Clipboard Manager"
    desc "Clipboard Manager is simple clipboard history manager for mac. It keeps all the changes your clipboard for later uses."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "ClipboardManager.app"
end