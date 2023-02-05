cask "mamp-mod" do
  version "6.8"
  sha256 "dcc8f4f0b1c725c3efc49172498269c5a4697559aac49ae855bb057dd9517624"
  url "https://github.com/Zenfection/macos/releases/download/1.0/MAMP.PRO_#{version}.dmg"
  
  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "MAMP_MAMP_PRO_#{version}_REPACK.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
