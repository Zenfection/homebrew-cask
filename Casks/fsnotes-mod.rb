cask "fsnotes-mod" do
  version "6.4.1"
  sha256 "d5a1c323aee6d7a9e34999c9c2132a757adcdd835e2be4183054cd691c498d15"

  url "https://dl.dropboxusercontent.com/scl/fi/xf91fo7a4eqg2uckbjov6/FSNotes_6.4.1.dmg?rlkey=vetz9o5bf85pqovxo2fzehm6r&dl=0",
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end