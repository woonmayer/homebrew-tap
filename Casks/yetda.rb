cask "yetda" do
  version "0.3.3"
  sha256 "4536d3a94f11154cce942343da7a43594d26b99746995ead7bbe44c6d724d697"

  url "https://github.com/woonmayer/homebrew-tap/releases/download/v#{version}/Yetda-#{version}.dmg"
  name "Yetda"
  desc "Puts screenshots into coding agents, with secrets masked first"
  homepage "https://yetda.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Yetda.app"

  uninstall quit: "io.github.woonmayer.yetda"

  zap trash: [
    "~/.agents/skills/shots",
    "~/.claude/skills/shots",
    "~/Library/Preferences/io.github.woonmayer.yetda.plist",
    "~/Yetda",
  ]
end
