cask "codex-menu-bar" do
  version "1.0.19"
  sha256 "61240ee3758d2d572089c6f343a19e62de237ebb8f0fa648cf9d69dbbc63526e"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.19/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
