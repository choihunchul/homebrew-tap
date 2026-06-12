cask "codex-menu-bar" do
  version "1.0.12"
  sha256 "7172c0fbe8ee4da9650ecd3438ffe637f79352f20c2cf17fe2ab1c0f76ac941d"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.12/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
