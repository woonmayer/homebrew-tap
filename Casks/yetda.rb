cask "yetda" do
  version "0.3.2"
  sha256 "bdc677308ed94308b7aea4fc6e2bf7d9d9cf78a77c100862e3913096102436a4"

  url "https://github.com/woonmayer/homebrew-tap/releases/download/v#{version}/Yetda-#{version}.dmg"
  name "Yetda"
  desc "Menu bar app that drops screenshots straight into terminal coding agents"
  homepage "https://woonmayer.github.io/yetda/"

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
