cask "art-text-mod" do
    version "4.2.2"
    sha256 "f1ef4f50ed8cd6dc5c2b2077bdd2920c6d3f28268f8ce9565459ea90c66d5732"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Art.Text.#{version.major}_#{version}.dmg"
    name "Art Text #{version.major}"
    desc "Art Text 4 is a graphic design software tuned for creating text effect and text style-based graphics. The app contains a multitude of text design presets and effects to help you create visually enhanced photo captions, logos, newsletter and flyer headings, presentations and even movie titles."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Art Text #{version.major}.app"
end