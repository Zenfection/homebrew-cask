cask "pdf-reader-pro-mod" do
  version "2.9.2.0"
  sha256 "6dc8cfc9e44798853617236397a142d369d088807e8461404961975fa53711df"

  url "https://dl.dropboxusercontent.com/scl/fi/13so6bxmdtdygmdz72rmm/PDF.Reader.Pro_2.9.2.0.dmg?rlkey=e57rhf73qbm616nrduoyweqfd&dl=0"
  name "PDF Reader Pro"
  desc "Read, annotate, edit, convert, create, OCR, fill forms and sign PDFs"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://www.pdfreaderpro.com/downloads/pdfreaderprocast.xml"
    strategy :sparkle
  end

  app "PDF Reader Pro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brother.pdfreaderprofree.mac.sfl2",
    "~/Library/Application Support/com.brother.pdfreaderprofree.mac",
    "~/Library/Caches/com.brother.pdfreaderprofree.mac",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.bookmarks.plist",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.plist",
  ]
end