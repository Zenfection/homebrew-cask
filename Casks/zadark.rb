cask "zadark" do
    version "4.11"
    sha256 "c549536d5eb2d03066e8e952d3d2ba1afb584e84a4f8212619d8b7cd23e14318"
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