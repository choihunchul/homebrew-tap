cask "codex-menu-bar" do
  version "1.0.9"
  sha256 "9f242c76682b9e44b017fd6f0327699407a5f3fc0e9851855864ebe3de2f7aca"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.9/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
