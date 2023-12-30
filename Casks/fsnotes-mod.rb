cask "fsnotes-mod" do
  version "6.6.2"
  sha256 "1bdb452eab6ebcc0bafe4279b2164db9b4b55e65d37d2eec8c5ff7e9847998fb"

  url "https://github.com/Zenfection/macos/releases/download/1.0/FSNotes_#{version}.dmg"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end