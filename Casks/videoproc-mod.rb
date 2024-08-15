cask "videoproc-mod" do
    version "6.5.20240802"
    sha256 "55845c902e6a3ccc3eb51ac0a9075d7ef0e68351bf817075782e43edab790b4f"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter.4K_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter 4K.app"
end