# https://github.com/jundot/omlx/releases
cask "omlx" do
  version "0.6.4"
  sha256 "53f1506c2385e8920a67198b72d1fe09351c1b3538be9c6bdeb78e5277d06d93"

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
  ]
end
