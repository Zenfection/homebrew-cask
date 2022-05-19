cask "movavi-convert-mod" do
    version "22.3.0"
    sha256 "976bc3e0abc13be50028f01a26693b47b219a7ee8e971274f718fe9f7858bdbf"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Movavi.Video.Converter.#{version.major}.Premium_#{version}.dmg"
    name "Movavi Convert Premium"
    desc "Movavi Video Converter is a video and audio file converter. Convert video and audio on your Mac. Save videos for watching on your portable device. Extract soundtracks from video. And much more…"
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Movavi Video Convert 22 Premium.app"
end