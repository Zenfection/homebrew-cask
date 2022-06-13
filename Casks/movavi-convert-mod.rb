cask "movavi-convert-mod" do
    version "22.5.0"
    sha256 "70a8e3fbf73d8314f632f310b897c8b3624b0b226007a8bcf6d425c4d2a7f85b"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Movavi.Video.Converter.#{version.major}.Premium_#{version}.dmg"
    name "Movavi Convert Premium"
    desc "Movavi Video Converter is a video and audio file converter. Convert video and audio on your Mac. Save videos for watching on your portable device. Extract soundtracks from video. And much more…"
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Movavi Video Converter 22 Premium.app"
end