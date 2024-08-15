cask "fsnotes-mod" do
  version "6.9.0"
  sha256 "d612f84e2f66b17374beb8dbd47cebf813154151235c732927b99b9b87cb669a"

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