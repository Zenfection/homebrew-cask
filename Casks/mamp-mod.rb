cask "mamp-mod" do
  version "6.6.4"
  sha256 "1a856a45660be6a4028957169a51f77283d4a065db960c948bc95de9d65a1b32"
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
