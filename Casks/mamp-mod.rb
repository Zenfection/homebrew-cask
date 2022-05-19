cask "mamp-mod" do
  version "6.6.1"
  sha256 "8992603cb0605836ed721c524900ede5015573692d1cce832067bbc77d0cb362"
  url "https://github.com/Zenfection/macos/releases/download/1.0/MAMP.Pro_#{version}.dmg"
  

  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "MAMP_MAMP_PRO_#{version}-REPACK.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
