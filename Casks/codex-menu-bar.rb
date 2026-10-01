cask "codex-menu-bar" do
  version "1.0.15"
  sha256 "0867050db459e933f698ffaf61401d2e48d3474e4f7b82fee2e0b6b02a30eb10"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.15/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
