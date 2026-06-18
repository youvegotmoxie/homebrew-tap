# https://github.com/ZenNotes/zennotes
cask "zen-notes" do
  version "2.3.0"
  sha256 "7317450b647f133478ddd197fc7dfd8a94f76f40f5b61ad741fb9bd00327cd99"

  url "https://github.com/ZenNotes/zennotes/releases/download/v#{version}/ZenNotes-#{version}-mac-arm64.dmg"
  name "Zen Notes"
  desc "Keyboard-first local Markdown notes with Vim motions, diagrams, and MCP integration"

  livecheck do
    url :url
  end

  depends_on macos: :tahoe
  auto_updates true

  app "ZenNotes.app"

  zap trash: [
    "/Applications/ZenNotes.app",
    "~/Library/Application Support/ZenNotes",
  ]
end
