cask "mamp-mod" do
  version "6.6.3"
  sha256 "0fd2b8b56e4bb11cc4424fc834c54a3e142ffd14b56d3e5d618d3add7192798c"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Mamp.Pro_#{version}.dmg"
  
  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "MAMP_MAMP_PRO_#{version}_REPACK.pkg.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
