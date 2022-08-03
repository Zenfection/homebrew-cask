cask "zadark" do
    version "4.10"
    sha256 "bce045c675cdaf54483a52f936d9a2b727b6577b3e53164ffdf39b2284b25ad8"
    url "https://github.com/Zenfection/macos/releases/download/1.0/ZaDark_#{version}.pkg"
    name "ZaDark"
    desc "ZaDark là tiện ích mã nguồn mở giúp kích hoạt Dark Mode cho Zalo trên PC và Trình duyệt Web."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    pkg "ZaDark_#{version}.pkg"

    zap trash: [
        '/Applications/ZaDark.app',
    ]
end