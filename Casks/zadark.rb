cask "zadark" do
    version "10.2"
    sha256 "6650e43adbdf8d1ff642990f6e8d06388878453e12e82bdce5643adb818c125f"
    url "https://dl.dropboxusercontent.com/scl/fi/z5iovht8khvhzn49axftz/ZaDark-10.2.pkg?rlkey=i83o0sdx29ikom7xl0x6wnw1f&dl=0"
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