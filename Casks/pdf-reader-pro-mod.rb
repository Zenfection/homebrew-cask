cask "pdf-reader-pro-mod" do
  version "4.7.5"
  sha256 "5ed9c468d4c2937adeac548f068cd393b01f1088a03d4ce3136454eec443a0bf"

  url "https://github.com/Zenfection/macos/releases/download/1.0/PDF.Reader.Pro_#{version}.dmg"
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