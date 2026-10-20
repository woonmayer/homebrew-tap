cask "yetda" do
  version "0.3.1"
  sha256 "70d68ae60230d08e9fa089cf3eaca151f7bd8dea91b69af3b14b29a3d8ac9844"

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
