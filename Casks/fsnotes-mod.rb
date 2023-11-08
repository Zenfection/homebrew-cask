cask "fsnotes-mod" do
  version "6.5.0"
  sha256 "0686918a49811e3e5c860c378e1b242285e49b1029b9a7601cfa8d28f6572713"

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