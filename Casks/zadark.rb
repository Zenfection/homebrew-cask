cask "zadark" do
    version "5.5"
    sha256 "33a16c7656207e3a6abac58fe056762a7aa996ae7763595ae551f1c2adfa5de0"
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