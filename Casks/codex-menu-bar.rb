cask "codex-menu-bar" do
  version "1.0.10"
  sha256 "2e9ed8e18caeb9c92b9c70ef35e29cd99d46f7d9ac8a199632a92ec066b4a722"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.10/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
