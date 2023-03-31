cask "weather-guru-mod" do
    version "2.5.2"
    sha256 "b5a8ae695b1d1541553c970fa6799cb10e2c4b9e69cbc76cadec31bb0650529a"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Weather.Guru_#{version}.dmg"
    name "Weather Guru"
    desc "Weather Guru is a beautiful and highly accurate weather app for your Mac. With its gorgeous and easy to use interface, the app provides live weather forecasts, helpful notifications and always keeps you updated with hourly data for 7 days ahead."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Weather Guru.app"
end