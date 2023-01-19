cask "mamp-mod" do
  version "6.7"
  sha256 "c162f6b1af79491bdc3b63aac9559c680575c6a804aa7838e94a8fc998e01c59"
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
