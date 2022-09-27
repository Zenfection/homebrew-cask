cask "squeezer" do
    version "2.5.2"
    sha256 "896a3495a875cedfe462bf36d97b58d241369cce1a0c2ff62091a2ee0d5f8233"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Squeezer_#{version}.dmg"
    name "Squeezer"
    desc "Compression components for web developers"
    homepage "https://github.com/zenfection/macos"

    depends_on macos: ">= :high_sierra"

    app "Squeezer.app"
end