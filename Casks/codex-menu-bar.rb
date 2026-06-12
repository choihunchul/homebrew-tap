cask "codex-menu-bar" do
  version "1.0.11"
  sha256 "eec06064441bbec80f1ab704f24d87d49becc2b99ac7219ce29b28ec37071d99"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.11/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
