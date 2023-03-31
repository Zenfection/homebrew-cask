cask "staruml-mod" do
    version "5.1.0"
    sha256 "b6fd96aea929ed16aa8a4fc6c05d37305427222fbe598bea9c86388ac840b3de"
    url "https://github.com/Zenfection/macos/releases/download/1.0/StarUML_#{version}.dmg"
    name "StarUML"
    desc "Software modeler"
    homepage "https://github.com/zenfection/macos"
    app "StarUML.app"
    auto_updates true
end