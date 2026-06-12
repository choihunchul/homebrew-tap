cask "deskgpt" do
  version "1.0.9"
  sha256 "cd33336450190f88e7abb445459b88a7b8ed5aa77dee466f99913c0517b15521"

  url "https://github.com/choihunchul/deskgpt/releases/download/v1.0.9/DeskGPT-1.0.9.dmg"
  name "DeskGPT"
  desc "Tiny native macOS wrapper for ChatGPT"
  homepage "https://github.com/choihunchul/deskgpt"

  app "DeskGPT.app"

  zap trash: [
    "~/Library/Preferences/com.myside.DeskGPT.plist",
    "~/Library/Application?Support/DeskGPT",
  ]
end
