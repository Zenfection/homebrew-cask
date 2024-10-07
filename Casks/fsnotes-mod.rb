cask "fsnotes-mod" do
  version "6.9.7"
  sha256 "f3a52b8b162ca2ef96ea4c5ef90f801d0a75cabfb92845bd82fed64667b216c9"

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