cask "zadark" do
    version "4.12"
    sha256 "a00c70027c3141a3d7c8b6304b79e6e808735326f3075e91447a01b8fc63130e"
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