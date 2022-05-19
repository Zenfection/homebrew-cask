cask "mamp-mod" do
  version "6.6.1"
  sha256 "bc580bde48a2294d9ae3089577e12c9460461c599d1600249be40fc54397c434"
  url "https://github.com/Zenfection/macos/releases/download/1.0/MAMP.Pro_#{version}.dmg"
  

  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "MAMP_MAMP_PRO #{version}/MAMP_MAMP_PRO_#{version}-REPACK.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
