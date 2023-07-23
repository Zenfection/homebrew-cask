cask "zadark" do
    version "9.5"
    sha256 "1a4512170016897d498f08537ec4e573b43b33ec5ab184d4317ce4f4d90c4712"
    url "https://dl.dropboxusercontent.com/scl/fi/6vtu2tz8ght5tfr3d4lo1/ZaDark-9.5.pkg?rlkey=n7tyq79fv6ebcyehqh8e2yizf&dl=0"
    name "ZaDark"
    desc "ZaDark là tiện ích mã nguồn mở giúp kích hoạt Dark Mode cho Zalo trên PC và Trình duyệt Web."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    pkg: "ZaDark_#{version}.pkg"

    installer manual: "ZaDark"

    zap trash: [
        '/Applications/ZaDark',
    ]
end