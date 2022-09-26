cask "zadark" do
    version "5.4"
    sha256 "89d617683a116c81b3878515469890e981b59c43e94dd86dfc025a41b46a7751"
    url "https://github.com/Zenfection/macos/releases/download/1.0/ZaDark_#{version}.zip"
    name "ZaDark"
    desc "ZaDark là tiện ích mã nguồn mở giúp kích hoạt Dark Mode cho Zalo trên PC và Trình duyệt Web."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "ZaDark"

    installer manual: "ZaDark"

    zap trash: [
        '/Applications/ZaDark',
    ]
end