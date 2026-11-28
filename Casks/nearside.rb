cask "nearside" do
  version "0.3.4"
  sha256 "914b549567fbe9d2e94ebd9609918166b39491b8bbff8876f7a0570b0ea4a1bf"

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
