cask "codex-menu-bar" do
  version "1.0.17"
  sha256 "2aea9419ce93ff915b241ed315442534fad1bdaa82803b16ee88ae7eb2c82601"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.17/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
