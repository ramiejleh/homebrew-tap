cask "nearside" do
  version "0.3.3"
  sha256 "3113942d1ef6fbfb76e39f491ed58bcd965c5f47d3c5a7bd96e210b9d7cbaf06"

  url "https://github.com/ramiejleh/Nearside/releases/download/v#{version}/Nearside-#{version}.zip"
  name "Nearside"
  desc "Your Android phone on your Mac: clipboard, notifications, messages, files and apps"
  homepage "https://ramiejleh.github.io/Nearside/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Nearside.app"

  zap trash: [
    "~/Library/Application Support/Nearside",
    "~/Library/Preferences/dev.nearside.mac.plist",
    "~/Library/Caches/dev.nearside.mac",
  ]
end
