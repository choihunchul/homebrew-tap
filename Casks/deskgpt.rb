cask "deskgpt" do
  version "1.0.14"
  sha256 "8822f5f4e81b0ef471899aa159d72f7362aa655d31e795d7f4b14eeabca2dbd8"

  url "https://github.com/choihunchul/deskgpt/releases/download/v1.0.14/DeskGPT-1.0.14.dmg"
  name "DeskGPT"
  desc "Tiny native macOS wrapper for ChatGPT"
  homepage "https://github.com/choihunchul/deskgpt"

  app "DeskGPT.app"

  zap trash: [
    "~/Library/Preferences/com.myside.DeskGPT.plist",
    "~/Library/Application?Support/DeskGPT",
  ]
end
