cask "videoproc-mod" do
    version "4.8"
    sha256 "cac0c453e2e21cc5b0e2bce7302e09fd0825d1825ab70cb3fe6a0433b28dba70"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter.app"
end