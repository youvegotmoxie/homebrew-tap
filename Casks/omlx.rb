# https://github.com/jundot/omlx/releases
cask "omlx" do
  version "0.4.4"
  sha256 "6df56b115426f7890a0c734ff81d89e55e4859dfca21543e124041321f5558fd"

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
