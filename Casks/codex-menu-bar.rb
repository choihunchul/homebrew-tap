cask "codex-menu-bar" do
  version "1.0.13"
  sha256 "8d8ab343b3499f5777cb7a670ade91b8c6498f76d0df02cf0b921ea847e908d3"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.13/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
