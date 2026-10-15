cask "codex-menu-bar" do
  version "1.0.18"
  sha256 "67701e0acf64767a203884a222b2e2cefa0949cc0ab6b07750bac73b5fd57a1d"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.18/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
