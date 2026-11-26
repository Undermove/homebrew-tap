cask "meridian" do
  version "1.5.1"
  sha256 "9be449c7361ef96f5c9a2168507fec2b84fe81e3a0e72a790623cef9926fdb4c"

  url "https://github.com/Undermove/meridian-browser/releases/download/v#{version}/Meridian-#{version}-mac-arm64.dmg"
  name "Meridian"
  desc "Chromium-based browser with vertical tabs, spaces and split view"
  homepage "https://meridianbrowser.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: [
    "~/Library/Application Support/Meridian Browser",
    "~/Library/Application Support/Meridian",
    "~/Library/Caches/dev.meridian.browser",
    "~/Library/Caches/Meridian Browser",
    "~/Library/HTTPStorages/dev.meridian.browser",
    "~/Library/Preferences/dev.meridian.browser.plist",
    "~/Library/Saved Application State/dev.meridian.browser.savedState",
  ]
end
