cask "staruml-mod" do
    version "5.0.1"
    sha256 "2713053a90e93c10186071202cc0181ead92c33c43184b9a575def1b9d1d7333"
    url "https://github.com/Zenfection/macos/releases/download/1.0/StarUML_#{version}.dmg"
    name "StarUML"
    desc "Software modeler"
    homepage "https://github.com/zenfection/macos"
    app "StarUML.app"
    auto_updates false
end