cask "pdf-reader-pro-mod" do
  version "2.9.5"
  sha256 "35a05cadb95b83df0eb5a61dd24db777e8a4102eaf73f7fca86a69944cb7f642"

  url "https://dl.dropboxusercontent.com/scl/fi/o7h3k0h8rdzclmh4uusug/PDF_Reader_Pro_2.9.5.dmg?rlkey=3v8qrbnmeieezx813aknoputm&dl=0"
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