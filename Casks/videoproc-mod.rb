cask "videoproc-mod" do
    version "5.5"
    sha256 "b4cc54b2a1dd0bacc2200d6e3fe0506aaead08fc476cf98f36d5da079e397e29"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter 4K.app"
end