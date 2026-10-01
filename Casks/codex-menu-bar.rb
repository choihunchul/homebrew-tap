cask "codex-menu-bar" do
  version "1.0.16"
  sha256 "9975be6183e1cbd5db1744676541903f26d588eaa1c5f817f60ae1a13421ce15"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.16/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
