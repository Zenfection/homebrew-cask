cask "mamp-mod" do
  version "6.9"
  sha256 "9afe34bf5ffbb630a5ab5f0743b0b001b8ceb8d73074766d2afabb5a0e291a6d"
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
