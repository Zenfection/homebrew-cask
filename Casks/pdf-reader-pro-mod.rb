cask "pdf-reader-pro-mod" do
  version "5.0.0"
  sha256 "b8139dff502817dbecc6caa2d494f9ddc583167b0cea159528db7af65f41b7cb"

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