cask "Lorien" do
  version "v0.5.0"
  sha256 "4bbb21f48dc8910673d0c594b514edc02144de2dd17996363cbfdf2beec44cd7"

  url "https://github.com/mbrlabs/Lorien/releases/download/#{version}/Lorien_#{version}_macOS.dmg"
  name "Lorien"
  desc "Lorien is an infinite canvas drawing/note-taking app that is focused on performance, small savefiles and simplicity"
  homepage "https://github.com/mbrlabs/Lorien"

  depends_on macos: ">= :montery"

  app "Lorien.app"

  zap trash: "/Applications/Lorien.app"
end
