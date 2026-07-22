cask "codex-menu-bar" do
  version "1.0.14"
  sha256 "d873fcdd8eb522552261bb43e04aabafb1633eca51e652d4551568e18a3ea552"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.14/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
