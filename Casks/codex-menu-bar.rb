cask "codex-menu-bar" do
  version "1.0.8"
  sha256 "dd62ece03c303bc6c20ca050830c48c4d4357874332c5e0d2ab447dae756b69f"

  url "https://github.com/choihunchul/codex-menu-bar/releases/download/v1.0.8/CodexMenuBar.dmg"
  name "Codex Menu Bar"
  desc "Local Codex, Cursor, and Antigravity plugin macOS companion app"
  homepage "https://github.com/choihunchul/codex-menu-bar"

  app "CodexMenuBar.app"

  zap trash: [
    "~/.codex-menu-bar",
    "~/Library/Application?Support/CodexMenuBar",
  ]
end
