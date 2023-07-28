cask "pdf-reader-pro-mod" do
  version "2.9.4.0"
  sha256 "b16b68b633ccccdc7e7d958bfbf037de6f4a3a53e8ab409a4dc30b6e80c168fb"

  url "https://dl.dropboxusercontent.com/scl/fi/ckkxfo8wciq8696ja7ool/PDF_Reader_Pro_2.9.4.0.dmg?rlkey=9zt8zvgwaquhb5sfrzeowaawr&dl=0"
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