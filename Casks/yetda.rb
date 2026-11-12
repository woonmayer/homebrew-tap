cask "yetda" do
  version "0.3.4"
  sha256 "a9c77577e7a77b7f1f1ee853ec5ab7c21ee3e01271331417b30885dd682149c4"

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
