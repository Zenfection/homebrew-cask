cask "zadark" do
    version "4.8"
    sha256 "51b803a354b2c3497a24235c69ec30742a8471dd5bd4738a08fdbb20a67732e3"
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