cask "yetda" do
  version "0.3.0"
  sha256 "dd1219cdc668bf7306d6de5b47011209b783a81ff43a0fd38dcd24d2104659e6"

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
