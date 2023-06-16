cask "videoproc-mod" do
    version "5.6"
    sha256 "52096276e2361fa73debe779dae6acef0f1e7f5f6e2569620644bfba22ce5885"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter 4K.app"
end