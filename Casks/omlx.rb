# https://github.com/jundot/omlx/releases
cask "omlx" do
  version "0.4.3"
  sha256 "2a5cb5c76505998f0725b1663202e3c8d8980bd3ca805abcb44cd2c2422f57f4"

  url "https://github.com/jundot/omlx/releases/download/v#{version}/oMLX-#{version}-macos26-27.dmg"
  name "oMLX"
  desc "oMLX is a macOS app for LLM inference"
  homepage "https://omlx.ai"


  livecheck do
    url :url
  end

  depends_on macos: :tahoe
  auto_updates true

  app "oMLX.app"

  zap trash: [
    "/Applications/oMLX.app",
    "~/Library/Application Support/oMLX",
    "~/Library/Preferences/app.omlx.plist",
    "~/.omlx/logs",
    "~/.omlx/bin/omlx",
    "~/.omlx/cache",
    "~/.omlx/stats.json",
  ]
end
