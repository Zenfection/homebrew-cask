cask "art-text-mod" do
    version "4.2.1"
    sha256 "281f15b615ecb7c5de11e585f150559faeb7426bc8d89ba2b5029023101872dc"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Art.Text.#{version.major}_#{version}.dmg"
    name "Art Text #{version.major}"
    desc "Art Text 4 is a graphic design software tuned for creating text effect and text style-based graphics. The app contains a multitude of text design presets and effects to help you create visually enhanced photo captions, logos, newsletter and flyer headings, presentations and even movie titles."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Art Text #{version.major}.app"
end